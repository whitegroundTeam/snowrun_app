import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/place/model/boundary_status.dart';
import 'package:doortoout/domain/place/model/boundary_type.dart';
import 'package:doortoout/domain/place/model/place.dart';
import 'package:doortoout/domain/place/place_failure.dart';


abstract class IPlaceRepository {
  Future<Either<PlaceFailure, List<Place>>> getPlaces();
  Future<Either<PlaceFailure, Unit>> createBoundary(int placeId, String name, BoundaryType boundaryType, BoundaryStatus boundaryStatus, List<List<double>> vertices);
}