import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'user_location.freezed.dart';

@freezed
class UserLocation with _$UserLocation {
  const UserLocation._();

  const factory UserLocation({
    required DoubleVO lat,
    required DoubleVO lng,
  }) = _UserLocation;

  factory UserLocation.empty() => UserLocation(
        lat: DoubleVO(37.7726101),
        lng: DoubleVO(128.912377),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return lat.failureOrUnit
        .andThen(lng.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
