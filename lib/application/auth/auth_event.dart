part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;

  const factory AuthEvent.signWithGooglePressed() = _SignWithGooglePressed;

  const factory AuthEvent.signWithApplePressed() = _SignWithApplePressed;

  const factory AuthEvent.signedOut() = _SignedOut;
}
