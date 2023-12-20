import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/body_spec/model/height.dart';
import 'package:snowrun_app/domain/body_spec/model/range.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supply_height.freezed.dart';

@freezed
class SupplyHeight with _$SupplyHeight {
  const SupplyHeight._();

  const factory SupplyHeight({
    required HeightUnit defaultHeightUnit,
    required MapVO<HeightUnit, List<Range>> rangesMap,
  }) = _SupplyHeight;

  factory SupplyHeight.empty() => SupplyHeight(
        defaultHeightUnit: HeightUnit.cm,
        rangesMap: MapVO({}),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return rangesMap.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
