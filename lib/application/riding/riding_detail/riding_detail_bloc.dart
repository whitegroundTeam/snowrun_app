import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/domain/riding/i_riding_repository.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';

part 'riding_detail_event.dart';
part 'riding_detail_state.dart';
part 'riding_detail_bloc.freezed.dart';

@injectable
class RidingDetailBloc extends Bloc<RidingDetailEvent, RidingDetailState> {
  final IRidingRepository _ridingRepository;

  RidingDetailBloc(this._ridingRepository) : super(RidingDetailState.initial()) {
    on<_GetRidingRoom>((event, emit) async {
            emit(state.copyWith(status: DefaultStatus.progress));
            final failureOrResponse = await _ridingRepository.getRidingRoom(event.ridingRoomId);
            emit(
              failureOrResponse.fold(
                (f) => state.copyWith(status: DefaultStatus.failure),
                (ridingRoom) => state.copyWith(
                  status: DefaultStatus.success,
                  ridingRoom: ridingRoom,
                ),
              ),
            );
          });
  }
}
