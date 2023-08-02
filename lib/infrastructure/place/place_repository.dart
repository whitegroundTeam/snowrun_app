import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/place/i_place_repository.dart';
import 'package:snowrun_app/domain/place/model/boundary_status.dart';
import 'package:snowrun_app/domain/place/model/boundary_type.dart';
import 'package:snowrun_app/domain/place/model/place.dart';
import 'package:snowrun_app/domain/place/place_failure.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';
import 'package:snowrun_app/infrastructure/error/error_response_dtos.dart';
import 'package:snowrun_app/infrastructure/place/place_dtos.dart';
import 'package:snowrun_app/types.dart';


@LazySingleton(as: IPlaceRepository)
class PlaceRepository implements IPlaceRepository {
  final CoreApi _api;

  PlaceRepository(this._api);

  @override
  Future<Either<PlaceFailure, List<Place>>> getPlaces() {
    // final response = await _api.getCarts();
    // final infoJson =
    // json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    // if (response.statusCode != 200) {
    //   final infoJson =
    //   json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    //   final appError = AppErrorDto.fromJson(infoJson);
    //   return left(CartFailure.unexpected(appError.toDomain()));
    // }
    // final carts = CartDto.fromJson(infoJson).toDomain();

    List<PlaceDto> testPlaceDtos = [
      const PlaceDto(name: "펜타포트"),
      const PlaceDto(name: "펜타포트")
    ];
    List<Place> testPlaces = testPlaceDtos.map((e) => e.toDomain()).toList();
    return Future.value(right(testPlaces));
  }

  @override
  Future<Either<PlaceFailure, Unit>> createBoundary(
      int placeId,
      String name,
      BoundaryType boundaryType,
      BoundaryStatus boundaryStatus,
      Polygon polygon,
      ) async {
    final response = await _api.createBoundaries(CreateBoundaryDto.fromDomain(
        placeId, name, boundaryType.index, boundaryStatus.index, polygon));
    if (response.statusCode != 200) {
      final infoJson =
      json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      final appError = AppErrorDto.fromJson(infoJson);
      return left(PlaceFailure.unexpected(appError.toDomain()));
    }
    return right(unit);
  }
}