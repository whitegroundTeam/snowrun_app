import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/riding/i_riding_repository.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';

part 'riding_actor_event.dart';

part 'riding_actor_state.dart';

part 'riding_actor_bloc.freezed.dart';

@injectable
class RidingActorBloc extends Bloc<RidingActorEvent, RidingActorState> {
  final IRidingRepository _ridingRepository;

  RidingActorBloc(this._ridingRepository) : super(RidingActorState.initial()) {
    on<_CreateRidingRoom>((event, emit) async {
      emit(state.copyWith(status: RidingActorStatus.progressCreateRidingRoom));
      final failureOrResponse = await _ridingRepository.createRidingRoom();
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: RidingActorStatus.failureCreateRidingRoom),
          (createdRidingRoom) {
            return state.copyWith(
              status: RidingActorStatus.successCreateRidingRoom,
              createdRidingRoom: createdRidingRoom,
            );
          },
        ),
      );
    });

    on<_DeleteRidingRoom>((event, emit) async {
      emit(state.copyWith(status: RidingActorStatus.progressDeleteRidingRoom));
      final failureOrResponse =
          await _ridingRepository.deleteRidingRoom(event.ridingRoomId);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: RidingActorStatus.failureDeleteRidingRoom),
          (response) => state.copyWith(
            status: RidingActorStatus.successDeleteRidingRoom,
          ),
        ),
      );
    });

    on<_ExitRidingRoom>((event, emit) async {
      emit(state.copyWith(status: RidingActorStatus.progressExitRidingRoom));
      final failureOrResponse =
          await _ridingRepository.exitRidingRoomName(event.ridingRoomId);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: RidingActorStatus.failureExitRidingRoom),
          (response) =>
              state.copyWith(status: RidingActorStatus.successExitRidingRoom),
        ),
      );
    });

    on<_JoinRidingRoom>((event, emit) async {
      emit(state.copyWith(status: RidingActorStatus.progressJoinRidingRoom));
      final failureOrResponse =
          await _ridingRepository.joinRidingRoomName(event.ridingRoomId);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: RidingActorStatus.failureJoinRidingRoom),
          (joinedRidingRoom) => state.copyWith(
            status: RidingActorStatus.successJoinRidingRoom,
            joinedRidingRoom: joinedRidingRoom,
          ),
        ),
      );
    });
  }
}
