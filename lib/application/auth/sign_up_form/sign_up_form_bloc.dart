// Dart imports:
import 'dart:async';

// Package imports:
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:snowrun_app/domain/auth/auth_failure.dart';
import 'package:snowrun_app/domain/auth/auth_sign_result.dart';
import 'package:snowrun_app/domain/auth/i_auth_repository.dart';
import 'package:snowrun_app/domain/auth/value_objects.dart';

part 'sign_up_form_bloc.freezed.dart';

part 'sign_up_form_event.dart';

part 'sign_up_form_state.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthRepository _authRepository;

  SignUpFormBloc(this._authRepository) : super(SignUpFormState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
        emailAddress: EmailAddress(event.emailStr),
        authFailureOrSuccessOption: none(),
      ));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: Password(event.passwordStr),
        authFailureOrSuccessOption: none(),
      ));
    });
    on<ConfirmPasswordChanged>((event, emit) {
      emit(state.copyWith(
        confirmPassword: ConfirmPassword(event.confirmPasswordStr),
        authFailureOrSuccessOption: none(),
      ));
    });
    on<RegisterWithEmailAndPasswordPressed>((event, emit) =>
        _performActionOnAuthFacadeWithEmailAndPassword(
            _authRepository.registerWithEmailAndPassword, emit));
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, AuthSignResult>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
    Emitter<SignUpFormState> emit,
  ) async {
    Either<AuthFailure, AuthSignResult> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isConfirmPasswordValid = state.confirmPassword.isValid();
    if (isEmailValid && isPasswordValid && isConfirmPasswordValid) {
      if (state.confirmPassword.getOrCrash() == state.password.getOrCrash()) {
        emit(state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ));

        failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress,
          password: state.password,
        );

        emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        ));
      }
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: none(),
    ));
  }
}
