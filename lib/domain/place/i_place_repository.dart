import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/place/model/boundary_status.dart';
import 'package:snowrun_app/domain/place/model/boundary_type.dart';
import 'package:snowrun_app/domain/place/model/place.dart';
import 'package:snowrun_app/domain/place/place_failure.dart';


abstract class IPlaceRepository {
  Future<Either<PlaceFailure, List<Place>>> getPlaces();
  Future<Either<PlaceFailure, Unit>> createBoundary(int placeId, String name, BoundaryType boundaryType, BoundaryStatus boundaryStatus, List<List<double>> vertices);
}