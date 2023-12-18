part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory LocationEvent.startRefreshLocation() = _StartRefreshLocation;
  const factory LocationEvent.stopRefreshLocation() = _StopRefreshLocation;
}
