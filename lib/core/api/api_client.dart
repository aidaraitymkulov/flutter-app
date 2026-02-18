import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../../features/auth/data/token_storage.dart';
import '../../features/auth/data/auth_repository.dart';
import 'endpoints.dart';

class ApiClient {
  late final Dio _dio;
  late final CacheOptions _cacheOptions;

  ApiClient(TokenStorage tokenStorage, AuthRepository authRepository) {
    final cacheStore = MemCacheStore();

    _cacheOptions = CacheOptions(
      store: cacheStore,
      policy: CachePolicy.forceCache,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(hours: 1),
    );

    _dio = Dio(
      BaseOptions(
        baseUrl: Endpoints.baseUrl,
        headers: {
          'X-Auth-Token': dotenv.env['API_TOKEN'],
        },
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    _dio.interceptors.add(DioCacheInterceptor(options: _cacheOptions));
    _dio.interceptors.add(
      _AuthInterceptor(tokenStorage: tokenStorage, authRepository: authRepository, dio: _dio),
    );
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _dio.get(
      path,
      queryParameters: queryParameters,
      options: _cacheOptions.toOptions(),
    );
  }
}

// Interceptor: добавляет Bearer токен и обновляет его при 401
class _AuthInterceptor extends Interceptor {
  final TokenStorage tokenStorage;
  final AuthRepository authRepository;
  final Dio dio;

  _AuthInterceptor({
    required this.tokenStorage,
    required this.authRepository,
    required this.dio,
  });

  // Перед каждым запросом — добавляем access token
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await tokenStorage.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  // При 401 — пробуем обновить токен и повторить запрос
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      try {
        final tokens = await authRepository.refresh();
        // Повторяем оригинальный запрос с новым токеном
        final opts = err.requestOptions;
        opts.headers['Authorization'] = 'Bearer ${tokens.accessToken}';
        final response = await dio.fetch(opts);
        handler.resolve(response);
        return;
      } catch (_) {
        // Refresh тоже упал — разлогиниваем
        await authRepository.logout();
      }
    }
    handler.next(err);
  }
}
