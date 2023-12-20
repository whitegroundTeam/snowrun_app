part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.selectActivityCenter(
      {required ActivityCenter activityCenter}) = _SelectActivityCenter;

  const factory CartEvent.addRental({required Rental rental}) = _AddRental;

  const factory CartEvent.editRental({required Rental rental}) = _EditRental;

  const factory CartEvent.removeRental({required Rental rental}) =
      _RemoveRental;

  const factory CartEvent.removeAllRentals() = _RemoveAllRentals;

  const factory CartEvent.initRecommendProduct(
      {required RentalShopProduct rentalShopProduct}) = _InitRecommendProduct;

  const factory CartEvent.addRecommendItemQuantity(
          {required RentalShopProductOptionItem optionItem}) =
      _AddRecommendItemQuantity;

  const factory CartEvent.removeRecommendItemQuantity(
          {required RentalShopProductOptionItem optionItem}) =
      _RemoveRecommendItemQuantity;

  const factory CartEvent.setRecommendItemQuantity(
          {required RentalShopProductOptionItem optionItem}) =
      _SetRecommendItemQuantity;

  const factory CartEvent.initLessonProduct(
      {required RentalShopProduct rentalShopProduct}) = _InitLessonProduct;

  const factory CartEvent.addLessonItemQuantity(
          {required RentalShopProductOptionItem optionItem}) =
      _AddLessonItemQuantity;

  const factory CartEvent.removeLessonItemQuantity(
          {required RentalShopProductOptionItem optionItem}) =
      _RemoveLessonItemQuantity;

  const factory CartEvent.setLessonItemQuantity(
          {required RentalShopProductOptionItem optionItem}) =
      _SetLessonItemQuantity;

  const factory CartEvent.setDateTimeTickets(
      {required Rental rental,
      required List<DateTimeTickets> dateTimeTickets}) = _SetDateTimeTickets;

  const factory CartEvent.setMemo({required String memo}) = _SetMemo;

  const factory CartEvent.get() = _Get;

  const factory CartEvent.clear() = _Clear;
}
