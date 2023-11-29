part of 'riding_actor_bloc.dart';

enum RidingActorStatus {
  initial,
  progressCreateRidingRoom,
  successCreateRidingRoom,
  failureCreateRidingRoom,
  progressDeleteRidingRoom,
  successDeleteRidingRoom,
  failureDeleteRidingRoom,
  progressExitRidingRoom,
  successExitRidingRoom,
  failureExitRidingRoom,
  progressJoinRidingRoom,
  successJoinRidingRoom,
  failureJoinRidingRoom,
}

@freezed
class RidingActorState with _$RidingActorState {
  const factory RidingActorState({
    required RidingActorStatus status,
    RidingRoom? createdRidingRoom,
    RidingRoom? joinedRidingRoom,
  }) = _RidingActorState;

  factory RidingActorState.initial() => const RidingActorState(
        status: RidingActorStatus.initial,
        createdRidingRoom: null,
    joinedRidingRoom: null,
      );
}
