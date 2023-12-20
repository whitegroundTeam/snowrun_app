part of 'rental_shop_bloc.dart';

@freezed
class RentalShopEvent with _$RentalShopEvent {
  const factory RentalShopEvent.getRentalShop({required String rentalShopAccessCode}) = _GetRentalShop;
}
