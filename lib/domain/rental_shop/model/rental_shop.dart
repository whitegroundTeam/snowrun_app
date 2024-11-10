import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/activity_center/model/activity_center.dart';
import 'package:doortoout/domain/contents/model/content_media.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/payment/bank_account/bank_account.dart';
import 'package:doortoout/domain/rental_shop/model/rental_shop_body_spec.dart';
import 'package:doortoout/domain/rental_shop/model/rental_shop_operation_info.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_shop.freezed.dart';

@freezed
class RentalShop with _$RentalShop {
  const RentalShop._();

  const factory RentalShop({
    required DoubleVO id,
    required StringVO name,
    required ListVO<ActivityCenter> activityCenters,
    required RentalShopOperationInfo operationInfo,
    required ListVO<BankAccount> bankAccounts,
    required ListVO<ContentMedia> contentMedias,
    required ListVO<RentalShopProduct> mainEquipmentProducts,
    required ListVO<RentalShopProduct> apparelEquipmentProducts,
    required ListVO<RentalShopProduct> accessoryEquipmentProducts,
    required RentalShopBodySpec supplyBodySpec,
    RentalShopProduct? recommendProduct,
    RentalShopProduct? lessonProducts,
  }) = _RentalShop;

  factory RentalShop.empty() => RentalShop(
        id: DoubleVO(-1),
        name: StringVO(""),
        activityCenters: ListVO([]),
        operationInfo: RentalShopOperationInfo.empty(),
        bankAccounts: ListVO([]),
        contentMedias: ListVO([]),
        mainEquipmentProducts: ListVO([]),
        apparelEquipmentProducts: ListVO([]),
        accessoryEquipmentProducts: ListVO([]),
        lessonProducts: null,
        recommendProduct: null,
        supplyBodySpec: RentalShopBodySpec.empty(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(name.failureOrUnit)
        .andThen(activityCenters.failureOrUnit)
        .andThen(contentMedias.failureOrUnit)
        .andThen(mainEquipmentProducts.failureOrUnit)
        .andThen(apparelEquipmentProducts.failureOrUnit)
        .andThen(accessoryEquipmentProducts.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
