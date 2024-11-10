import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_spec_value.freezed.dart';

@freezed
class BodySpecValue with _$BodySpecValue {
  const BodySpecValue._();

  const factory BodySpecValue({
    required DoubleVO value,
    required IntVO decimalPlaces,
  }) = _BodySpecValue;

  factory BodySpecValue.empty() => BodySpecValue(
        value: DoubleVO(0),
        decimalPlaces: IntVO(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return value.failureOrUnit
        .andThen(decimalPlaces.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
