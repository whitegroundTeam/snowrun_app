import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_shop_operation_time.freezed.dart';

@freezed
class RentalShopOperationTime with _$RentalShopOperationTime {
  const RentalShopOperationTime._();

  const factory RentalShopOperationTime({
    required StringVO title,
    required DateTimeVO from,
    required DateTimeVO to,
  }) = _RentalShopOperationTime;

  factory RentalShopOperationTime.empty() => RentalShopOperationTime(
        title: StringVO(""),
        from: DateTimeVO(DateTime.now()),
        to: DateTimeVO(DateTime.now()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(from.failureOrUnit)
        .andThen(to.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
