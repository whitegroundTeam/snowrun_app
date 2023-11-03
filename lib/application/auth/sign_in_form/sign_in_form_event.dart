part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;

  const factory SignInFormEvent.passwordChanged(String passwordStr) =
  PasswordChanged;

  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
  SignInWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signWithGooglePressed() = _SignWithGooglePressed;

  const factory SignInFormEvent.signWithApplePressed() = _SignWithApplePressed;

}
