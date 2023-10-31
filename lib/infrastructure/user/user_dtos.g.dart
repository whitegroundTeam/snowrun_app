// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      location: json['location'] == null
          ? null
          : UserLocationDto.fromJson(json['location'] as Map<String, dynamic>),
      profileImage: json['image'] as String?,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'location': instance.location,
      'image': instance.profileImage,
    };

_$_UserLocationDto _$$_UserLocationDtoFromJson(Map<String, dynamic> json) =>
    _$_UserLocationDto(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UserLocationDtoToJson(_$_UserLocationDto instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
