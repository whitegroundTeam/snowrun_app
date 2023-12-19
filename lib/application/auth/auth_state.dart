part of 'auth_bloc.dart';

enum AuthStatus { initial, progress, authenticated, unauthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isSubmitting,
    required Option<Either<AuthFailure, AuthSignResult>>
        authFailureOrSuccessOption,
    required AuthStatus status,
    required User? user,
    required bool existedProfileImage,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        status: AuthStatus.initial,
        user: null,
        existedProfileImage: false,
      );
}
