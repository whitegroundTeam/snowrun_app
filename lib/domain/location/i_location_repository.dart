import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:doortoout/domain/location/location_failure.dart';
import 'package:doortoout/domain/location/model/boundary_location.dart';

abstract class ILocationRepository {
  Future<Either<LocationFailure, List<BoundaryLocation>>> getLocations();

  Future<Either<LocationFailure, Position>> getCurrentLocation();
}
