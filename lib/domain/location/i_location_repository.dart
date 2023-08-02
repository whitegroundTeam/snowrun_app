import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/location/location_failure.dart';
import 'package:snowrun_app/domain/location/model/location.dart';


abstract class ILocationRepository {
  Future<Either<LocationFailure, List<Location>>> getLocations();
}