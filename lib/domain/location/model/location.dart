import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/types.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const Location._();

  const factory Location({
    required ListVO<Polygon> coordinates,
  }) = _Location;

  factory Location.empty() =>
      Location(
        coordinates: ListVO([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return coordinates.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}