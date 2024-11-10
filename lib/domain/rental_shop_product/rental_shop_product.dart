import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/contents/model/content_media.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_shop_product.freezed.dart';

enum RentalShopProductType {
  none,
  ski,
  snowboard,
  jacket,
  pants,
  onePiece,
  gloves,
  goggle,
  helmet,
  recommend,
}

@freezed
class RentalShopProduct with _$RentalShopProduct {
  const RentalShopProduct._();

  const factory RentalShopProduct({
    required DoubleVO id,
    required RentalShopProductType type,
    ContentMedia? media,
    required StringVO title,
    required StringVO description,
    required ListVO<RentalShopProductOption> productOptions,
  }) = _RentalShopProduct;

  factory RentalShopProduct.empty() => RentalShopProduct(
        id: DoubleVO(-1),
        type: RentalShopProductType.none,
        media: null,
        title: StringVO(""),
        description: StringVO(""),
        productOptions: ListVO([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(productOptions.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
