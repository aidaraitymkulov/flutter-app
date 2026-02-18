import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../domain/auth_tokens.dart';
import 'token_storage.dart';

// Отдельный Dio БЕЗ auth interceptor — только для auth запросов.
// Если использовать основной ApiClient, получим бесконечный цикл:
// 401 → refresh → 401 → refresh → ...
class AuthRepository {
  late final Dio _dio;
  final TokenStorage tokenStorage;

  AuthRepository(this.tokenStorage) {
    _dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env['AUTH_BASE_URL'] ?? 'http://localhost:3000',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }

  Future<AuthTokens> login(String login, String password) async {
    final response = await _dio.post(
      '/auth/login',
      data: {'login': login, 'password': password},
    );
    final tokens = AuthTokens.fromJson(response.data);
    await tokenStorage.save(tokens);
    return tokens;
  }

  Future<AuthTokens> refresh() async {
    final refreshToken = await tokenStorage.getRefreshToken();
    if (refreshToken == null) throw Exception('No refresh token');

    final response = await _dio.post(
      '/auth/refresh',
      data: {'refresh_token': refreshToken},
    );
    final tokens = AuthTokens.fromJson(response.data);
    await tokenStorage.save(tokens);
    return tokens;
  }

  Future<void> logout() async {
    final refreshToken = await tokenStorage.getRefreshToken();
    if (refreshToken != null) {
      try {
        await _dio.post(
          '/auth/logout',
          data: {'refresh_token': refreshToken},
        );
      } catch (_) {
        // Даже если сервер недоступен — всё равно чистим локальные токены
      }
    }
    await tokenStorage.clear();
  }
}
