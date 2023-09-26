part of 'auth_bloc.dart';

enum AuthStatus { initial, progress, authenticated, unauthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthStatus status,
    required User? user,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        status: AuthStatus.authenticated,
        user: null,
      );
}
