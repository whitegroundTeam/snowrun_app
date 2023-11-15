part of 'riding_detail_bloc.dart';

@freezed
class RidingDetailState with _$RidingDetailState {
  const factory RidingDetailState({
    required DefaultStatus status,
    RidingRoom? ridingRoom,
  }) = _RidingDetailState;

  factory RidingDetailState.initial() => const RidingDetailState(
        status: DefaultStatus.initial,
        ridingRoom: null,
      );
}