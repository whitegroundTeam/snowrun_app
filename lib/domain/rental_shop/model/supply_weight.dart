import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/body_spec/model/range.dart';
import 'package:snowrun_app/domain/body_spec/model/weight.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supply_weight.freezed.dart';

@freezed
class SupplyWeight with _$SupplyWeight {
  const SupplyWeight._();

  const factory SupplyWeight({
    required WeightUnit defaultWeightUnit,
    required MapVO<WeightUnit, List<Range>> rangesMap,
  }) = _SupplyWeight;

  factory SupplyWeight.empty() =>
      SupplyWeight(defaultWeightUnit: WeightUnit.kg, rangesMap: MapVO({}));

  Option<ValueFailure<dynamic>> get failureOption {
    return rangesMap.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
