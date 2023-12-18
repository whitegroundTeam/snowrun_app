part of 'location_bloc.dart';

enum LocationStatus {
  initial,
  progressGetCurrentLocation,
  successGetCurrentLocation,
  failureGetCurrentLocation,
  progressStartRefreshLocation,
  successStartRefreshLocation,
  failureStartRefreshLocation,
  progressStopRefreshLocation,
  successStopRefreshLocation,
  failureStopRefreshLocation,
}

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required LocationStatus status,
    required UserLocation userLocation,
    required bool isInit,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
        status: LocationStatus.initial,
        userLocation: UserLocation.empty(),
        isInit: false,
      );
}
