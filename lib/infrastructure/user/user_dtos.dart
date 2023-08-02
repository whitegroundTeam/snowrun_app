import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/place/model/place.dart';
import 'package:snowrun_app/domain/user/model/user.dart';


part 'user_dtos.freezed.dart';

part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(name: 'name') required String name,
  }) = _UserDto;

  factory UserDto.fromDomain(Place place) {
    return UserDto(
      name: place.name.getOrCrash(),
    );
  }

  User toDomain() {
    return User(
      name: StringVO(name),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}