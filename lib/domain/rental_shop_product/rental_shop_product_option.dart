import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_shop_product_option.freezed.dart';

@freezed
class RentalShopProductOption with _$RentalShopProductOption {
  const RentalShopProductOption._();

  const factory RentalShopProductOption({
    required DoubleVO id,
    required StringVO title,
    required StringVO description,
    required BooleanVO isRequired,
    required ListVO<RentalShopProductOptionItem> optionItems,
    required RentalShopProductOptionItem? selectedOptionItem,
    required IntVO minSelection,
    required IntVO maxSelection,
  }) = _RentalShopProductOption;

  factory RentalShopProductOption.empty() => RentalShopProductOption(
        id: DoubleVO(-1),
        title: StringVO(""),
        description: StringVO(""),
        isRequired: BooleanVO(false),
        optionItems: ListVO([]),
        selectedOptionItem: null,
        minSelection: IntVO(0),
        maxSelection: IntVO(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(isRequired.failureOrUnit)
        .andThen(optionItems.failureOrUnit)
        .andThen(minSelection.failureOrUnit)
        .andThen(maxSelection.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
