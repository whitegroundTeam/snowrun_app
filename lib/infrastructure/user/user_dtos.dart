import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';

part 'user_dtos.freezed.dart';

part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'nickname') required String nickname,
    @JsonKey(name: 'location') UserLocationDto? location,
    @JsonKey(name: 'image') String? profileImage,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      nickname: user.nickname.getOrCrash(),
      location:
          UserLocationDto.fromDomain(user.location ?? UserLocation.empty()),
    );
  }

  User toDomain() {
    return User(
      id: IntVO(id),
      nickname: StringVO(nickname),
      location: location?.toDomain(),
      image: StringVO(profileImage ?? ""),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
class UserLocationDto with _$UserLocationDto {
  const UserLocationDto._();

  const factory UserLocationDto({
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lng') required double lng,
  }) = _UserLocationDto;

  factory UserLocationDto.fromDomain(UserLocation userLocation) {
    return UserLocationDto(
      lat: userLocation.lat.getOrCrash(),
      lng: userLocation.lng.getOrCrash(),
    );
  }

  UserLocation toDomain() {
    return UserLocation(
      lat: DoubleVO(lat),
      lng: DoubleVO(lng),
    );
  }

  factory UserLocationDto.fromJson(Map<String, dynamic> json) =>
      _$UserLocationDtoFromJson(json);
}
