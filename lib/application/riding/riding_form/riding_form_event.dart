part of 'riding_form_bloc.dart';

@freezed
class RidingFormEvent with _$RidingFormEvent {
  const factory RidingFormEvent.updateRidingRoomName(
      int ridingRoomId, String name) = _UpdateRidingRoomName;
}
