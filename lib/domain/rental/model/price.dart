import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/rental/model/price_unit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.freezed.dart';
@freezed
class Price with _$Price {
  const Price._();
  const factory Price({
    required DoubleVO price,
    required PriceUnit priceUnit,
  }) = _Price;
  factory Price.empty() => Price(
        price: DoubleVO(-1),
        priceUnit: PriceUnit.won,
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return price.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}