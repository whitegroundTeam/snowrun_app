// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceDtoImpl _$$PlaceDtoImplFromJson(Map<String, dynamic> json) =>
    _$PlaceDtoImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$PlaceDtoImplToJson(_$PlaceDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$BoundaryDtoImpl _$$BoundaryDtoImplFromJson(Map<String, dynamic> json) =>
    _$BoundaryDtoImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BoundaryDtoImplToJson(_$BoundaryDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$VerticesDtoImpl _$$VerticesDtoImplFromJson(Map<String, dynamic> json) =>
    _$VerticesDtoImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$VerticesDtoImplToJson(_$VerticesDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$CreateBoundaryDtoImpl _$$CreateBoundaryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBoundaryDtoImpl(
      placeId: json['place'] as int,
      name: json['name'] as String,
      type: json['type'] as int,
      status: json['status'] as int,
      vertices: VerticesDto.fromJson(json['vertices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateBoundaryDtoImplToJson(
        _$CreateBoundaryDtoImpl instance) =>
    <String, dynamic>{
      'place': instance.placeId,
      'name': instance.name,
      'type': instance.type,
      'status': instance.status,
      'vertices': instance.vertices,
    };
