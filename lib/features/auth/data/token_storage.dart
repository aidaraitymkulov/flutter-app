import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../domain/auth_tokens.dart';

// Ключи для хранилища
const _kAccessToken = 'access_token';
const _kRefreshToken = 'refresh_token';

class TokenStorage {
  final _storage = const FlutterSecureStorage();

  Future<void> save(AuthTokens tokens) async {
    await _storage.write(key: _kAccessToken, value: tokens.accessToken);
    await _storage.write(key: _kRefreshToken, value: tokens.refreshToken);
  }

  Future<String?> getAccessToken() => _storage.read(key: _kAccessToken);
  Future<String?> getRefreshToken() => _storage.read(key: _kRefreshToken);

  Future<bool> hasTokens() async {
    final token = await _storage.read(key: _kAccessToken);
    return token != null;
  }

  Future<void> clear() async {
    await _storage.delete(key: _kAccessToken);
    await _storage.delete(key: _kRefreshToken);
  }
}
