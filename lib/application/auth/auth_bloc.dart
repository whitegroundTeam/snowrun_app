import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/auth/auth_failure.dart';
import 'package:snowrun_app/domain/auth/i_auth_repository.dart';
import 'package:snowrun_app/domain/auth/oauth_sign_result.dart';
import 'package:snowrun_app/domain/user/model/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(AuthState.initial()){
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
  }

  Future<void> _performActionOnAuthFacade(
      Future<Either<AuthFailure, OauthSignResult>> Function() forwardedCall,
      Emitter<AuthState> emit,
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
