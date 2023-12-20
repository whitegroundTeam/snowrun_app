part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required DateTime refreshedAt,
    required DefaultStatus status,
    required Cart cart,
  }) = _CartState;

  factory CartState.initial() => CartState(
        refreshedAt: DateTime.now(),
        status: DefaultStatus.initial,
        cart: Cart.empty(),
      );
}
