part of 'riding_actor_bloc.dart';

@freezed
class RidingActorEvent with _$RidingActorEvent {
  const factory RidingActorEvent.createRidingRoom() = _CreateRidingRoom;
  const factory RidingActorEvent.deleteRidingRoom(int ridingRoomId) = _DeleteRidingRoom;
  const factory RidingActorEvent.exitRidingRoom(int ridingRoomId) = _ExitRidingRoom;
  const factory RidingActorEvent.joinRidingRoom(int ridingRoomId) = _JoinRidingRoom;
}
