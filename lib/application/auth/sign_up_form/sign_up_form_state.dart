part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required EmailAddress emailAddress,
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmPassword: ConfirmPassword(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
