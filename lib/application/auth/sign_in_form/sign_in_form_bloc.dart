import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/auth/auth_failure.dart';
import 'package:snowrun_app/domain/auth/auth_sign_result.dart';
import 'package:snowrun_app/domain/auth/i_auth_repository.dart';
import 'package:snowrun_app/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepository _authRepository;

  SignInFormBloc(this._authRepository) : super(SignInFormState.initial()) {
    on<_SignWithGooglePressed>(
      (event, emit) => _performActionOnAuthFacade(
        _authRepository.signWithGoogle,
        emit,
      ),
    );

    on<_SignWithApplePressed>(
      (event, emit) => _performActionOnAuthFacade(
        _authRepository.signWithApple,
        emit,
      ),
    );

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
    on<SignInWithEmailAndPasswordPressed>(
      (event, emit) => _performActionOnAuthFacadeWithEmailAndPassword(
        _authRepository.signInWithEmailAndPassword,
        emit,
      ),
    );
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, AuthSignResult>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardedCall,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, AuthSignResult> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    debugPrint("WTWTWT :: HOHOHO 333");
    if (isEmailValid && isPasswordValid) {
      debugPrint("WTWTWT :: HOHOHO 444-0");
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      debugPrint("WTWTWT :: HOHOHO 444-1");
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
      debugPrint("WTWTWT :: HOHOHO 444-2");
      // FIXME : GA failureOrSuccess.fold((f) => null, (_) => Global.analytics.logLogin());
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    }

    debugPrint("WTWTWT :: HOHOHO 555");
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: none(),
    ));
  }

  Future<void> _performActionOnAuthFacade(
      Future<Either<AuthFailure, AuthSignResult>> Function() forwardedCall,
      Emitter<SignInFormState> emit,
      ) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await forwardedCall();
    // FIXME : GA failureOrSuccess.fold((f) => null, (_) => Global.analytics.logLogin());
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
