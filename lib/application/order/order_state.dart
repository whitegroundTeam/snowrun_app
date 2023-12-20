part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    required DefaultStatus status,
    required List<Rental> rentals,
  }) = _OrderState;

  factory OrderState.initial() => const OrderState(
        status: DefaultStatus.initial,
        rentals: [],
      );
}
