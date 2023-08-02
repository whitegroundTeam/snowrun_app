import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'place.freezed.dart';

@freezed
class Place with _$Place {
  const Place._();

  const factory Place({
    required StringVO name,
  }) = _Place;

  factory Place.empty() => Place(
    name: StringVO(""),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}