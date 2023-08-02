import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/place/model/boundary.dart';
import 'package:snowrun_app/domain/place/model/place.dart';
import 'package:snowrun_app/domain/place/model/vertices.dart';
import 'package:snowrun_app/domain/place/model/vertices_type.dart';
import 'package:snowrun_app/types.dart';


part 'place_dtos.freezed.dart';

part 'place_dtos.g.dart';

@freezed
class PlaceDto with _$PlaceDto {
  const PlaceDto._();

  const factory PlaceDto({
    @JsonKey(name: 'name') required String name,
  }) = _PlaceDto;

  factory PlaceDto.fromDomain(Place place) {
    return PlaceDto(
      name: place.name.getOrCrash(),
    );
  }

  Place toDomain() {
    return Place(
      name: StringVO(name),
    );
  }

  factory PlaceDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceDtoFromJson(json);
}

@freezed
class BoundaryDto with _$BoundaryDto {
  const BoundaryDto._();

  const factory BoundaryDto({
    @JsonKey(name: 'name') required String name,
  }) = _BoundaryDto;

  factory BoundaryDto.fromDomain(Boundary boundary) {
    return BoundaryDto(
      name: boundary.name.getOrCrash(),
    );
  }

  Boundary toDomain() {
    return Boundary(
      name: StringVO(name),
    );
  }

  factory BoundaryDto.fromJson(Map<String, dynamic> json) =>
      _$BoundaryDtoFromJson(json);
}

@freezed
class VerticesDto with _$VerticesDto {
  const VerticesDto._();

  const factory VerticesDto({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'coordinates') required List<Polygon> coordinates,
  }) = _VerticesDto;

  factory VerticesDto.fromDomain(Vertices vertices) {
    return VerticesDto(
      type: vertices.type.description,
      coordinates: vertices.coordinates.getOrCrash(),
    );
  }

  Vertices toDomain() {
    return Vertices(
      type: VerticesType.findByName(name: type),
      coordinates: ListVO(coordinates),
    );
  }

  factory VerticesDto.fromJson(Map<String, dynamic> json) =>
      _$VerticesDtoFromJson(json);
}

@freezed
class CreateBoundaryDto with _$CreateBoundaryDto {
  const CreateBoundaryDto._();

  const factory CreateBoundaryDto({
    @JsonKey(name: 'place') required int placeId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'vertices') required VerticesDto vertices,
  }) = _CreateBoundaryDto;

  factory CreateBoundaryDto.fromDomain(
      int placeId,
      String name,
      int type,
      int status,
      List<List<double>> coordinates,
      ) {
    return CreateBoundaryDto(
        placeId: placeId,
        name: name,
        type: type,
        status: status,
        vertices: VerticesDto.fromDomain(Vertices(
          type: VerticesType.polygon,
          coordinates: ListVO([coordinates]),
        )));
  }

  factory CreateBoundaryDto.fromJson(Map<String, dynamic> json) =>
      _$CreateBoundaryDtoFromJson(json);
}