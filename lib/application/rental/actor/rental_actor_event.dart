part of 'rental_actor_bloc.dart';

@freezed
class RentalActorEvent with _$RentalActorEvent {
  const factory RentalActorEvent.init({required Rental rental}) = _Init;

  const factory RentalActorEvent.setName({required String name}) = _SetName;

  const factory RentalActorEvent.setPhoneNumber({required String phoneNumber}) =
      _SetPhoneNumber;

  const factory RentalActorEvent.setCountryCode({
    required CountryCode countryCode,
  }) = _SetCountryCode;

  const factory RentalActorEvent.setEmail({required String email}) = _SetEmail;

  const factory RentalActorEvent.setGender({required Gender gender}) =
      _SetGender;

  const factory RentalActorEvent.setAge({required Age age}) = _SetAge;

  const factory RentalActorEvent.setBodySpec({required BodySpec? bodySpec}) =
      _SetBodySpec;

  const factory RentalActorEvent.setStartAt({required DateTime? startAt}) =
      _SetStartAt;

  const factory RentalActorEvent.setEndAt({required DateTime? endAt}) =
      _SetEndAt;

  const factory RentalActorEvent.setReturnType(
      {required RentalReturnType rentalReturnType}) = _SetReturnType;

  const factory RentalActorEvent.setMainEquipment(
      {required RentalShopProduct selectedRentalShopProduct}) = _SetMainEquipment;

  const factory RentalActorEvent.setApparelEquipment(
      {required RentalShopProduct selectedRentalShopProduct}) = _SetApparelEquipment;

  const factory RentalActorEvent.setAccessoryEquipment(
      {required RentalShopProduct selectedRentalShopProduct}) = _SetAccessoryEquipment;
}
