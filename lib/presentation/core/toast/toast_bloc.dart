import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/application/default_status.dart';

part 'toast_event.dart';

part 'toast_state.dart';

part 'toast_bloc.freezed.dart';

@singleton
class ToastBloc extends Bloc<ToastEvent, ToastState> {
  ToastBloc() : super(ToastState.initial()) {
    on<_Show>((event, emit) async {
      emit(state.copyWith(
        message: event.message,
        updatedAt: DateTime.now(),
      ));
    });

    on<_Reset>((event, emit) async {
      emit(state.copyWith(message: null));
    });
  }
}
