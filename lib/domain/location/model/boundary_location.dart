import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/place/types.dart';


part 'boundary_location.freezed.dart';

@freezed
class BoundaryLocation with _$BoundaryLocation {
  const BoundaryLocation._();

  const factory BoundaryLocation({
    required ListVO<Polygon> coordinates,
  }) = _BoundaryLocation;

  factory BoundaryLocation.empty() =>
      BoundaryLocation(
        coordinates: ListVO([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return coordinates.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}