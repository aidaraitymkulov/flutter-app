import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/providers/core_providers.dart';

enum AuthStatus { loading, authenticated, unauthenticated }

class AuthNotifier extends StateNotifier<AuthStatus> {
  final Ref ref;

  AuthNotifier(this.ref) : super(AuthStatus.loading) {
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    final storage = ref.read(tokenStorageProvider);
    final hasTokens = await storage.hasTokens();
    state = hasTokens ? AuthStatus.authenticated : AuthStatus.unauthenticated;
  }

  Future<void> login(String login, String password) async {
    await ref.read(authRepositoryProvider).login(login, password);
    state = AuthStatus.authenticated;
  }

  Future<void> logout() async {
    await ref.read(authRepositoryProvider).logout();
    state = AuthStatus.unauthenticated;
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthStatus>(
  (ref) => AuthNotifier(ref),
);
