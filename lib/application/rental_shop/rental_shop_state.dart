part of 'rental_shop_bloc.dart';

@freezed
class RentalShopState with _$RentalShopState {
  const factory RentalShopState({
    required DefaultStatus status,
    required RentalShop rentalShop,
  }) = _RentalShopState;

  factory RentalShopState.initial() => RentalShopState(
        status: DefaultStatus.initial,
        rentalShop: RentalShop.empty(),
      );
}
