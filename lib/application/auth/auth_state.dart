part of 'auth_bloc.dart';

enum AuthStatus { initial, progress, authenticated, unauthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isSubmitting,
    required Option<Either<AuthFailure, OauthSignResult>>
        authFailureOrSuccessOption,
    required AuthStatus status,
    required User? user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        // status: AuthStatus.authenticated,
        // user: User.empty(),
        status: AuthStatus.unauthenticated,
        user: null,
      );
}
