part of 'riding_form_bloc.dart';

@freezed
class RidingFormState with _$RidingFormState {
  const factory RidingFormState({
    required DefaultStatus status,
    required RidingRoom updatedRidingRoom,
  }) = _RidingFormState;

  factory RidingFormState.initial() => RidingFormState(
        status: DefaultStatus.initial,
        updatedRidingRoom: RidingRoom.empty(),
      );
}
