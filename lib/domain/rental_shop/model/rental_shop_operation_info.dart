import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/rental/model/rental_return.dart';
import 'package:snowrun_app/domain/rental_shop/model/rental_shop_operation_time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_shop_operation_info.freezed.dart';

@freezed
class RentalShopOperationInfo with _$RentalShopOperationInfo {
  const RentalShopOperationInfo._();

  const factory RentalShopOperationInfo({
    required IntVO adultAge,
    required ListVO<RentalShopOperationTime> rentalShopOperationTimes,
    required ListVO<RentalReturn> rentalReturnMethods,
  }) = _RentalShopOperationInfo;

  factory RentalShopOperationInfo.empty() => RentalShopOperationInfo(
        adultAge: IntVO(16),
        rentalShopOperationTimes: ListVO([]),
        rentalReturnMethods: ListVO([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return rentalShopOperationTimes.failureOrUnit
        .andThen(adultAge.failureOrUnit)
        .andThen(rentalReturnMethods.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
