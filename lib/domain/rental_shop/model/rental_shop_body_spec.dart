import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/rental_shop/model/supply_foot_size.dart';
import 'package:doortoout/domain/rental_shop/model/supply_height.dart';
import 'package:doortoout/domain/rental_shop/model/supply_weight.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_shop_body_spec.freezed.dart';

@freezed
class RentalShopBodySpec with _$RentalShopBodySpec {
  const RentalShopBodySpec._();

  const factory RentalShopBodySpec({
    required SupplyHeight supplyHeight,
    required SupplyWeight supplyWeight,
    required SupplyFootSize supplyFootSize,
  }) = _RentalShopBodySpec;

  factory RentalShopBodySpec.empty() => RentalShopBodySpec(
        supplyHeight: SupplyHeight.empty(),
        supplyWeight: SupplyWeight.empty(),
        supplyFootSize: SupplyFootSize.empty(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return supplyHeight.failureOption
        .andThen(supplyWeight.failureOption)
        .andThen(supplyFootSize.failureOption);
  }
}
