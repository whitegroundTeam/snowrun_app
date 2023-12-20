import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  const Address._();

  const factory Address({
    required StringVO mainAddress,
    required StringVO detailAddress,
    required StringVO city,
    required StringVO stateOfProvince,
    required StringVO postalCode,
    required StringVO country,
  }) = _Address;

  factory Address.empty() => Address(
        mainAddress: StringVO(""),
        detailAddress: StringVO(""),
        city: StringVO(""),
        stateOfProvince: StringVO(""),
        postalCode: StringVO(""),
        country: StringVO(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return mainAddress.failureOrUnit
        .andThen(detailAddress.failureOrUnit)
        .andThen(city.failureOrUnit)
        .andThen(stateOfProvince.failureOrUnit)
        .andThen(postalCode.failureOrUnit)
        .andThen(country.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
