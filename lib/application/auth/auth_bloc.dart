import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/auth/auth_failure.dart';
import 'package:snowrun_app/domain/auth/i_auth_repository.dart';
import 'package:snowrun_app/domain/auth/auth_sign_result.dart';
import 'package:snowrun_app/domain/user/model/user.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthState.initial()) {
    on<_SignedOut>((event, emit) async {
      await _authRepository.signOut();
      emit(
        state.copyWith(user: null, status: AuthStatus.unauthenticated),
      );
    });

    on<_CheckAuth>((event, emit) async {
      final meOption = await _authRepository.me();
      meOption.fold(
        () {
          return emit(
              state.copyWith(user: null, status: AuthStatus.unauthenticated));
        },
        (user) {
          return emit(
              state.copyWith(user: user, status: AuthStatus.authenticated));
        },
      );
    });
  }
}
