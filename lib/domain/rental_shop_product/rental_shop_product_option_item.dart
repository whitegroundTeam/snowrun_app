import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/contents/model/content_media.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/rental/model/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_shop_product_option_item.freezed.dart';

@freezed
class RentalShopProductOptionItem with _$RentalShopProductOptionItem {
  const RentalShopProductOptionItem._();

  const factory RentalShopProductOptionItem(
      {required DoubleVO id,
      required ContentMedia? media,
      required StringVO title,
      required StringVO description,
      required Price price,
      BooleanVO? recommend,
      int? quantity,
      bool? isValid,
      bool? isSelected}) = _RentalShopProductOptionItem;

  factory RentalShopProductOptionItem.empty() => RentalShopProductOptionItem(
        id: DoubleVO(-1),
        media: null,
        title: StringVO(""),
        description: StringVO(""),
        price: Price.empty(),
        recommend: BooleanVO(false),
        quantity: 0,
        isValid: false,
        isSelected: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(description.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
