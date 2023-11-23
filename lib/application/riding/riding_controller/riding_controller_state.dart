part of 'riding_controller_bloc.dart';

enum RidingBehavior {
  min,
  max,
  movingToMin,
  movingToMax,
}

@freezed
class RidingControllerState with _$RidingControllerState {
  const factory RidingControllerState({
    required double scrolledRatio,
    required RidingBehavior ridingBehavior,
    RidingPlayer? ridingPlayer,
  }) = _RidingControllerState;

  factory RidingControllerState.initial() => const RidingControllerState(
        scrolledRatio: 0.0,
        ridingBehavior: RidingBehavior.min,
        ridingPlayer: null,
      );
}
