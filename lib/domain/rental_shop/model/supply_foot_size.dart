import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/body_spec/model/body_spec_value.dart';
import 'package:doortoout/domain/body_spec/model/foot_size.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supply_foot_size.freezed.dart';

@freezed
class SupplyFootSize with _$SupplyFootSize {
  const SupplyFootSize._();

  const factory SupplyFootSize({
    required FootSizeUnit defaultFootSizeUnit,
    required MapVO<FootSizeUnit, List<BodySpecValue>> supplyFootSizeMap,
    required ListVO<FootShape> supplyFootShapes,
    required FootShape defaultFootShape,
  }) = _SupplyFootSize;

  factory SupplyFootSize.empty() => SupplyFootSize(
        defaultFootSizeUnit: FootSizeUnit.mm,
        supplyFootSizeMap: MapVO({}),
        supplyFootShapes: ListVO([]),
        defaultFootShape: FootShape.normal,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return supplyFootSizeMap.failureOrUnit
        .andThen(supplyFootShapes.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  List<FootSizeUnit> getFootSizeUnits(bool isChild, bool isMale) {
    return supplyFootSizeMap.getOrCrash().keys.where((unit) {
      if (isChild) {
        return unit == FootSizeUnit.usC ||
            unit == FootSizeUnit.ukC ||
            unit == FootSizeUnit.mm ||
            unit == FootSizeUnit.eu ||
            unit == FootSizeUnit.jp;
      } else {
        if (isMale) {
          return unit == FootSizeUnit.usM ||
              unit == FootSizeUnit.ukM ||
              unit == FootSizeUnit.eu ||
              unit == FootSizeUnit.mm ||
              unit == FootSizeUnit.jp;
        } else {
          return unit == FootSizeUnit.usW ||
              unit == FootSizeUnit.ukW ||
              unit == FootSizeUnit.mm ||
              unit == FootSizeUnit.eu ||
              unit == FootSizeUnit.jp;
        }
      }
    }).toList();
  }
}
