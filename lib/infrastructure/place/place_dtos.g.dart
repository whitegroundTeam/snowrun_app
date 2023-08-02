// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceDto _$$_PlaceDtoFromJson(Map<String, dynamic> json) => _$_PlaceDto(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_PlaceDtoToJson(_$_PlaceDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_BoundaryDto _$$_BoundaryDtoFromJson(Map<String, dynamic> json) =>
    _$_BoundaryDto(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_BoundaryDtoToJson(_$_BoundaryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_VerticesDto _$$_VerticesDtoFromJson(Map<String, dynamic> json) =>
    _$_VerticesDto(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$_VerticesDtoToJson(_$_VerticesDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$_CreateBoundaryDto _$$_CreateBoundaryDtoFromJson(Map<String, dynamic> json) =>
    _$_CreateBoundaryDto(
      placeId: json['place'] as int,
      name: json['name'] as String,
      type: json['type'] as int,
      status: json['status'] as int,
      vertices: VerticesDto.fromJson(json['vertices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateBoundaryDtoToJson(
        _$_CreateBoundaryDto instance) =>
    <String, dynamic>{
      'place': instance.placeId,
      'name': instance.name,
      'type': instance.type,
      'status': instance.status,
      'vertices': instance.vertices,
    };
