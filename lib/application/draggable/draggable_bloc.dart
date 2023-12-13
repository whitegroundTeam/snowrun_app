import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'draggable_event.dart';

part 'draggable_state.dart';

part 'draggable_bloc.freezed.dart';

@injectable
class DraggableBloc extends Bloc<DraggableEvent, DraggableState> {
  DraggableBloc() : super(DraggableState.initial()) {
    on<_UpdatePosition>((event, emit) async {
      emit(state.copyWith(offset: event.offset));
    });
  }
}
