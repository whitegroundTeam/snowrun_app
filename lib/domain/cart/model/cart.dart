import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/activity_center/model/activity_center.dart';
import 'package:snowrun_app/domain/activity_center/model/time_ticket.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/rental/model/rental.dart';
import 'package:snowrun_app/domain/rental_shop_product/rental_shop_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';

@freezed
class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    required DoubleVO id,
    required ActivityCenter? activityCenter,
    required List<Rental>? rentals,
    required RentalShopProduct? recommendProduct,
    required RentalShopProduct? lessonProduct,
    required String? memo,
  }) = _Cart;

  factory Cart.empty() => Cart(
        id: DoubleVO(-1),
        activityCenter: null,
        rentals: null,
        recommendProduct: null,
        lessonProduct: null,
        memo: null,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this.id.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
