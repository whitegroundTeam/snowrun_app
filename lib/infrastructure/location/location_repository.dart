import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/location/i_location_repository.dart';
import 'package:snowrun_app/domain/location/location_failure.dart';
import 'package:snowrun_app/domain/location/model/boundary_location.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';
import 'package:snowrun_app/infrastructure/location/location_dtos.dart';

@LazySingleton(as: ILocationRepository)
class LocationRepository implements ILocationRepository {
  final CoreApi _api;

  LocationRepository(this._api);

  @override
  Future<Either<LocationFailure, List<BoundaryLocation>>> getLocations() {
    List<LocationDto> testLocationDtos = [
      const LocationDto(coordinates: [
        [
          [0.0],
          [0.0]
        ]
      ]),
    ];
    List<BoundaryLocation> testLocations =
        testLocationDtos.map((e) => e.toDomain()).toList();
    return Future.value(right(testLocations));
  }

  @override
  Future<Either<LocationFailure, Position>> getCurrentLocation() async {
    Position currentLocationResponse = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.bestForNavigation,
    );
    return Future.value(right(currentLocationResponse));
  }
}
