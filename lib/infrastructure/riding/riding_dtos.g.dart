// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riding_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RidingRoomDtoImpl _$$RidingRoomDtoImplFromJson(Map<String, dynamic> json) =>
    _$RidingRoomDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      isPrivate: json['is_private'] as bool,
      me: json['me'] == null
          ? null
          : RidingPlayerDto.fromJson(json['me'] as Map<String, dynamic>),
      players: (json['players'] as List<dynamic>)
          .map((e) => RidingPlayerDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPlayers: json['total_players'] as int,
    );

Map<String, dynamic> _$$RidingRoomDtoImplToJson(_$RidingRoomDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_private': instance.isPrivate,
      'me': instance.me,
      'players': instance.players,
      'total_players': instance.totalPlayers,
    };

_$RidingPlayerDtoImpl _$$RidingPlayerDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RidingPlayerDtoImpl(
      id: json['id'] as int,
      user: json['user'] as int,
      nickname: json['nickname'] as String,
      room: json['room'] as int,
      location: json['location'] == null
          ? null
          : UserLocationDto.fromJson(json['location'] as Map<String, dynamic>),
      locationUpdatedAt: DateTime.parse(json['location_updated_at'] as String),
      profileImage: json['profile_image'] as String,
      isOwner: json['is_owner'] as bool,
    );

Map<String, dynamic> _$$RidingPlayerDtoImplToJson(
        _$RidingPlayerDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'nickname': instance.nickname,
      'room': instance.room,
      'location': instance.location,
      'location_updated_at': instance.locationUpdatedAt.toIso8601String(),
      'profile_image': instance.profileImage,
      'is_owner': instance.isOwner,
    };

_$UpdateRidingRoomNameRequestDtoImpl
    _$$UpdateRidingRoomNameRequestDtoImplFromJson(Map<String, dynamic> json) =>
        _$UpdateRidingRoomNameRequestDtoImpl(
          name: json['name'] as String,
        );

Map<String, dynamic> _$$UpdateRidingRoomNameRequestDtoImplToJson(
        _$UpdateRidingRoomNameRequestDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
