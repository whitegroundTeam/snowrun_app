part of 'rental_option_actor_bloc.dart';

@freezed
class RentalOptionActorEvent with _$RentalOptionActorEvent {
  const factory RentalOptionActorEvent.init({required List<RentalShopProductOption> productOptions}) = _Init;
  const factory RentalOptionActorEvent.select({required RentalShopProductOption rentalShopProductOption, required RentalShopProductOptionItem rentalShopProductOptionItem}) = _Select;
}
