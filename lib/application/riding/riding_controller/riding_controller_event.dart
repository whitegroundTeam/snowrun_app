part of 'riding_controller_bloc.dart';

@freezed
class RidingControllerEvent with _$RidingControllerEvent {
  const factory RidingControllerEvent.selectMarker(int? selectedMarkerSymbolId) = _SelectMarker;
}
