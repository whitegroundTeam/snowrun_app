import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_shop_failure.freezed.dart';

@freezed
class RentalShopFailure with _$RentalShopFailure {
  const factory RentalShopFailure.unexpected() = Unexpected;
}