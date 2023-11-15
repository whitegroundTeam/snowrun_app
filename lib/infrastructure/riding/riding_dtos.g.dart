// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riding_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RidingRoomDto _$$_RidingRoomDtoFromJson(Map<String, dynamic> json) =>
    _$_RidingRoomDto(
      id: json['id'] as int,
      name: json['name'] as String,
      isPrivate: json['is_private'] as bool,
      players: (json['players'] as List<dynamic>)
          .map((e) => RidingPlayerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPlayers: json['total_players'] as int,
    );

Map<String, dynamic> _$$_RidingRoomDtoToJson(_$_RidingRoomDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_private': instance.isPrivate,
      'players': instance.players,
      'total_players': instance.totalPlayers,
    };

_$_RidingPlayerDto _$$_RidingPlayerDtoFromJson(Map<String, dynamic> json) =>
    _$_RidingPlayerDto(
      id: json['id'] as int,
      user: json['user'] as int,
      nickname: json['nickname'] as String,
      room: json['room'] as int,
      location:
          UserLocationDto.fromJson(json['location'] as Map<String, dynamic>),
      locationUpdatedAt: DateTime.parse(json['location_updated_at'] as String),
      profileImage: json['profile_image'] as String,
    );

Map<String, dynamic> _$$_RidingPlayerDtoToJson(_$_RidingPlayerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'nickname': instance.nickname,
      'room': instance.room,
      'location': instance.location,
      'location_updated_at': instance.locationUpdatedAt.toIso8601String(),
      'profile_image': instance.profileImage,
    };

_$_UpdateRidingRoomNameRequestDto _$$_UpdateRidingRoomNameRequestDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateRidingRoomNameRequestDto(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_UpdateRidingRoomNameRequestDtoToJson(
        _$_UpdateRidingRoomNameRequestDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
