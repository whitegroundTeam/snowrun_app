import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/domain/riding/i_riding_repository.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';

part 'riding_form_event.dart';
part 'riding_form_state.dart';
part 'riding_form_bloc.freezed.dart';

@injectable
class RidingFormBloc extends Bloc<RidingFormEvent, RidingFormState> {
  final IRidingRepository _ridingRepository;

  RidingFormBloc(this._ridingRepository) : super(RidingFormState.initial()) {
    on<_UpdateRidingRoomName>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse = await _ridingRepository.updateRidingRoomName(event.ridingRoomId, event.name);
      emit(
        failureOrResponse.fold(
              (f) => state.copyWith(status: DefaultStatus.failure),
              (updatedRidingRoom) => state.copyWith(
            status: DefaultStatus.success,
            updatedRidingRoom: updatedRidingRoom,
          ),
        ),
      );
    });
  }
}
