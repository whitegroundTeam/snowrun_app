import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/location/model/lat_lng.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_center.freezed.dart';

@freezed
class ActivityCenter with _$ActivityCenter {
  const ActivityCenter._();

  const factory ActivityCenter({
    required DoubleVO id,
    required StringVO name,
    required LatLng location,
  }) = _ActivityCenter;

  factory ActivityCenter.empty() => ActivityCenter(
        id: DoubleVO(-1),
        name: StringVO(""),
        location: LatLng.empty(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(name.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
