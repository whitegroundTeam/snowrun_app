import 'package:bloc/bloc.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'select_button_event.dart';

part 'select_button_state.dart';

part 'select_button_bloc.freezed.dart';

@injectable
class SelectButtonBloc extends Bloc<SelectButtonEvent, SelectButtonState> {
  SelectButtonBloc() : super(SelectButtonState.initial()) {
    on<_SetActive>((event, emit) async {
      emit(state.copyWith(
          status: DefaultStatus.success, isActive: event.isActive));
    });
  }
}
