part of 'location_bloc.dart';

enum LocationStatus {
  initial,
  progressGetCurrentLocation,
  successGetCurrentLocation,
  failureGetCurrentLocation,
}

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required LocationStatus status,
    required UserLocation userLocation,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
        status: LocationStatus.initial,
        userLocation: UserLocation.empty(),
      );
}
