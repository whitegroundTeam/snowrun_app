part of 'riding_list_bloc.dart';

@freezed
class RidingListState with _$RidingListState {
  const factory RidingListState({
    required DefaultStatus status,
    required List<RidingRoom> ridingRooms,
  }) = _RidingListState;

  factory RidingListState.initial() => const RidingListState(
        status: DefaultStatus.initial,
        ridingRooms: [],
      );
}
