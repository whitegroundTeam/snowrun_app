import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'range.freezed.dart';

@freezed
class Range with _$Range {
  const Range._();

  const factory Range({
    required DoubleVO start,
    required DoubleVO end,
    required IntVO decimalPlaces,
  }) = _Range;

  factory Range.empty() => Range(
        start: DoubleVO(0),
        end: DoubleVO(0),
        decimalPlaces: IntVO(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return start.failureOrUnit
        .andThen(end.failureOrUnit)
        .andThen(decimalPlaces.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
