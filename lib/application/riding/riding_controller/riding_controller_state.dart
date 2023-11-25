part of 'riding_controller_bloc.dart';

@freezed
class RidingControllerState with _$RidingControllerState {
  const factory RidingControllerState({
    required double scrolledRatio,
    int? selectedMarkerSymbolId,
  }) = _RidingControllerState;

  factory RidingControllerState.initial() => const RidingControllerState(
        scrolledRatio: 0.0,
        selectedMarkerSymbolId: null,
      );
}
