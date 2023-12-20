import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/rental/model/price.dart';
import 'package:snowrun_app/domain/rental/model/rental_return_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_return.freezed.dart';

@freezed
class RentalReturn with _$RentalReturn {
  const RentalReturn._();

  const factory RentalReturn({
    required RentalReturnType rentalReturnType,
    required Price price,
  }) = _RentalReturn;

  factory RentalReturn.empty() => RentalReturn(
        rentalReturnType: RentalReturnType.rentalShop,
        price: Price.empty(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return price.failureOption;
  }
}
