import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_lng.freezed.dart';
@freezed
class LatLng with _$LatLng {
  const LatLng._();
  const factory LatLng({
    required DoubleVO latitude,
    required DoubleVO longitude,
  }) = _LatLng;
  factory LatLng.empty() => LatLng(
        latitude: DoubleVO(-1),
        longitude: DoubleVO(-1),
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return latitude.failureOrUnit
        .andThen(longitude.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}