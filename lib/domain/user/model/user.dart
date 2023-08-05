import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/location/model/location.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required StringVO nickname,
    required UserLocation? location,
  }) = _User;

  factory User.empty() => User(
        nickname: StringVO(""),
        location: UserLocation.empty(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return nickname.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
