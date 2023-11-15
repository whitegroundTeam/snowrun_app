import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/domain/riding/i_riding_repository.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';

part 'riding_list_event.dart';

part 'riding_list_state.dart';

part 'riding_list_bloc.freezed.dart';

@injectable
class RidingListBloc extends Bloc<RidingListEvent, RidingListState> {
  final IRidingRepository _ridingRepository;

  RidingListBloc(this._ridingRepository) : super(RidingListState.initial()) {
    on<_GetRidingRooms>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse = await _ridingRepository.getRidingRooms();
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: DefaultStatus.failure),
          (ridingRooms) => state.copyWith(
              status: DefaultStatus.success,
              ridingRooms: ridingRooms.ridingRooms.getOrCrash()),
        ),
      );
    });
  }
}
