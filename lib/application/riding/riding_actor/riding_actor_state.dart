part of 'riding_actor_bloc.dart';

@freezed
class RidingActorState with _$RidingActorState {
  const factory RidingActorState({
    required DefaultStatus status,
    RidingRoom? ridingRoom,
  }) = _RidingActorState;

  factory RidingActorState.initial() => const RidingActorState(
        status: DefaultStatus.initial,
        ridingRoom: null,
      );
}
