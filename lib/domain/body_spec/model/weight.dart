import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/body_spec/model/range.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight.freezed.dart';

@freezed
class Weight with _$Weight {
  const Weight._();

  const factory Weight({
    required Range? range,
    required WeightUnit unit,
  }) = _Weight;

  factory Weight.empty() => const Weight(
        range: null,
        unit: WeightUnit.kg,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return range?.failureOption ?? const None();
  }
}

enum WeightUnit { kg, lb }
