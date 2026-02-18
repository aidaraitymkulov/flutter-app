import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'endpoints.dart';

class ApiClient {
  late final Dio _dio;
  late final CacheOptions _cacheOptions;

  ApiClient() {
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
