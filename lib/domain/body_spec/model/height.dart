import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/body_spec/model/range.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'height.freezed.dart';

@freezed
class Height with _$Height {
  const Height._();

  const factory Height({
    required Range? range,
    required HeightUnit unit,
  }) = _Height;

  factory Height.empty() => Height(
        range: Range.empty(),
        unit: HeightUnit.cm,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return range?.failureOption ?? const None();
  }
}

enum HeightUnit {
  cm, // Centimeters
  ft, // Feet
}
