part of 'place_bloc.dart';

enum PlaceStatus {
  initial,
  progressGetPlaces,
  successGetPlaces,
  failureGetPlaces,

  progressCreateBoundary,
  successCreateBoundary,
  failureCreateBoundary,
}

@freezed
class PlaceState with _$PlaceState {
  const factory PlaceState({
    required PlaceStatus status,
    required List<Place> places,
  }) = _PlaceState;

  factory PlaceState.initial() => const PlaceState(
    status: PlaceStatus.initial,
    places: [],
  );
}