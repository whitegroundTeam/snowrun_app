part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.addRental({required Rental rental}) = _AddRental;
  const factory OrderEvent.removeRental({required Rental rental}) = _RemoveRental;
  const factory OrderEvent.removeAllRentals() = _RemoveAllRentals;
}
