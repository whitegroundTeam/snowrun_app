// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      location: json['location'] == null
          ? null
          : UserLocationDto.fromJson(json['location'] as Map<String, dynamic>),
      profileImage: json['image'] as String?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'location': instance.location,
      'image': instance.profileImage,
    };

_$UserLocationDtoImpl _$$UserLocationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLocationDtoImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserLocationDtoImplToJson(
        _$UserLocationDtoImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$SnowBallProfileImageDtoImpl _$$SnowBallProfileImageDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SnowBallProfileImageDtoImpl(
      key: json['key'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$SnowBallProfileImageDtoImplToJson(
        _$SnowBallProfileImageDtoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'url': instance.url,
    };

_$UpdateProfileByTypeRequestDtoImpl
    _$$UpdateProfileByTypeRequestDtoImplFromJson(Map<String, dynamic> json) =>
        _$UpdateProfileByTypeRequestDtoImpl(
          type: json['type'] as String,
        );

Map<String, dynamic> _$$UpdateProfileByTypeRequestDtoImplToJson(
        _$UpdateProfileByTypeRequestDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
