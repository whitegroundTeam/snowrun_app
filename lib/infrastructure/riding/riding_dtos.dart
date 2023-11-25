import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';
import 'package:snowrun_app/infrastructure/auth/firebase_user_mapper.dart';
import 'package:snowrun_app/infrastructure/user/user_dtos.dart';

part 'riding_dtos.freezed.dart';

part 'riding_dtos.g.dart';

@freezed
class RidingRoomDto with _$RidingRoomDto {
  const RidingRoomDto._();

  const factory RidingRoomDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'is_private') required bool isPrivate,
    @JsonKey(name: 'me') RidingPlayerDto? me,
    @JsonKey(name: 'players') required List<RidingPlayerDto> players,
    @JsonKey(name: 'total_players') required int totalPlayers,
  }) = _RidingRoomDto;

  factory RidingRoomDto.fromDomain(RidingRoom ridingRoom) {
    return RidingRoomDto(
      id: ridingRoom.id.getOrCrash(),
      name: ridingRoom.name.getOrCrash(),
      isPrivate: ridingRoom.isPrivate.getOrCrash(),
      me: ridingRoom.me != null ? RidingPlayerDto.fromDomain(ridingRoom.me ?? RidingPlayer.empty()) : null,
      players: ridingRoom.players
          .getOrCrash()
          .map((e) => RidingPlayerDto.fromDomain(e))
          .toList(),
      totalPlayers: ridingRoom.totalPlayersCount.getOrCrash(),
    );
  }

  RidingRoom toDomain() {
    return RidingRoom(
      id: IntVO(id),
      name: StringVO(name),
      isPrivate: BooleanVO(isPrivate),
      me: me?.toDomain(),
      players: ListVO(players.map((e) => e.toDomain()).toList()),
      totalPlayersCount: IntVO(totalPlayers),
    );
  }

  factory RidingRoomDto.fromJson(Map<String, dynamic> json) =>
      _$RidingRoomDtoFromJson(json);
}

@freezed
class RidingPlayerDto with _$RidingPlayerDto {
  const RidingPlayerDto._();

  const factory RidingPlayerDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'user') required int user,
    @JsonKey(name: 'nickname') required String nickname,
    @JsonKey(name: 'room') required int room,
    @JsonKey(name: 'location') UserLocationDto? location,
    @JsonKey(name: 'location_updated_at') required DateTime locationUpdatedAt,
    @JsonKey(name: 'profile_image') required String profileImage,
    @JsonKey(name: 'is_owner') required bool isOwner,
  }) = _RidingPlayerDto;

  factory RidingPlayerDto.fromDomain(RidingPlayer ridingPlayer) {
    return RidingPlayerDto(
      id: ridingPlayer.id.getOrCrash(),
      user: ridingPlayer.userId.getOrCrash(),
      nickname: ridingPlayer.nickname.getOrCrash(),
      room: ridingPlayer.roomId.getOrCrash(),
      location: UserLocationDto.fromDomain(
          ridingPlayer.location ?? UserLocation.empty()),
      locationUpdatedAt: ridingPlayer.locationUpdatedAt.getOrCrash(),
      profileImage: ridingPlayer.profileImage.getOrCrash(),
      isOwner: ridingPlayer.isOwner.getOrCrash(),
    );
  }

  RidingPlayer toDomain() {
    return RidingPlayer(
      id: IntVO(id),
      userId: IntVO(user),
      nickname: StringVO(nickname),
      roomId: IntVO(room),
      location: location?.toDomain() ?? UserLocation.empty(),
      locationUpdatedAt: DateTimeVO(locationUpdatedAt),
      profileImage: StringVO(profileImage),
      isOwner: BooleanVO(isOwner),
    );
  }

  factory RidingPlayerDto.fromJson(Map<String, dynamic> json) =>
      _$RidingPlayerDtoFromJson(json);
}

@freezed
class UpdateRidingRoomNameRequestDto with _$UpdateRidingRoomNameRequestDto {
  const UpdateRidingRoomNameRequestDto._();

  const factory UpdateRidingRoomNameRequestDto({
    @JsonKey(name: 'name') required String name,
  }) = _UpdateRidingRoomNameRequestDto;

  factory UpdateRidingRoomNameRequestDto.fromDomain(String name) {
    return UpdateRidingRoomNameRequestDto(name: name);
  }

  factory UpdateRidingRoomNameRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateRidingRoomNameRequestDtoFromJson(json);
}
