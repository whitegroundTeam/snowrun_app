part of 'place_bloc.dart';

@freezed
class PlaceEvent with _$PlaceEvent {
  const factory PlaceEvent.getPlaces() = _GetPlaces;

  const factory PlaceEvent.getPlace() = _GetPlace;

  const factory PlaceEvent.createBoundary(
      int placeId,
      String name,
      BoundaryType boundaryType,
      BoundaryStatus boundaryStatus,
      Polygon polygon,
      ) = _CreateBoundary;
}