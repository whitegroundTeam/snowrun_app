part of 'riding_detail_bloc.dart';

@freezed
class RidingDetailEvent with _$RidingDetailEvent {
  const factory RidingDetailEvent.getRidingRoom(int ridingRoomId) = _GetRidingRoom;
}