import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:snowrun_app/domain/location/location_failure.dart';
import 'package:snowrun_app/domain/location/model/boundary_location.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';

abstract class ILocationRepository {
  Future<Either<LocationFailure, List<BoundaryLocation>>> getLocations();

  Future<Either<LocationFailure, Position>> getCurrentLocation();
}
