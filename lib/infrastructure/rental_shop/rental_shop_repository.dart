import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/activity_center/model/activity_center.dart';
import 'package:snowrun_app/domain/activity_center/model/date_time_tickets.dart';
import 'package:snowrun_app/domain/activity_center/model/time_ticket.dart';
import 'package:snowrun_app/domain/body_spec/model/body_spec_value.dart';
import 'package:snowrun_app/domain/body_spec/model/foot_size.dart';
import 'package:snowrun_app/domain/body_spec/model/height.dart';
import 'package:snowrun_app/domain/body_spec/model/range.dart';
import 'package:snowrun_app/domain/body_spec/model/weight.dart';
import 'package:snowrun_app/domain/contact/model/contact_method.dart';
import 'package:snowrun_app/domain/contents/model/content_media.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/location/model/lat_lng.dart';
import 'package:snowrun_app/domain/payment/bank_account/bank_account.dart';
import 'package:snowrun_app/domain/rental/model/price.dart';
import 'package:snowrun_app/domain/rental/model/price_unit.dart';
import 'package:snowrun_app/domain/rental/model/rental.dart';
import 'package:snowrun_app/domain/rental/model/rental_return.dart';
import 'package:snowrun_app/domain/rental/model/rental_return_type.dart';
import 'package:snowrun_app/domain/rental_shop/i_rental_shop_repository.dart';
import 'package:snowrun_app/domain/rental_shop/model/rental_shop.dart';
import 'package:snowrun_app/domain/rental_shop/model/rental_shop_body_spec.dart';
import 'package:snowrun_app/domain/rental_shop/model/rental_shop_operation_info.dart';
import 'package:snowrun_app/domain/rental_shop/model/supply_foot_size.dart';
import 'package:snowrun_app/domain/rental_shop/model/supply_height.dart';
import 'package:snowrun_app/domain/rental_shop/model/supply_weight.dart';
import 'package:snowrun_app/domain/rental_shop/rental_shop_failure.dart';
import 'package:snowrun_app/domain/rental_shop_product/rental_shop_product.dart';
import 'package:snowrun_app/domain/rental_shop_product/rental_shop_product_option.dart';
import 'package:snowrun_app/domain/rental_shop_product/rental_shop_product_option_item.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';

@LazySingleton(as: IRentalShopRepository)
class RentalShopRepository implements IRentalShopRepository {
  final CoreApi _api;

  RentalShopRepository(this._api);

  @override
  Future<Either<RentalShopFailure, RentalShop>> getRentalShop(
      String profileImageType) {
    // ActivityCenter 모킹 데이터
    ActivityCenter mockActivityCenter1 = ActivityCenter(
      id: DoubleVO(1.0),
      name: StringVO("모나용평"),
      location: LatLng(
          latitude: DoubleVO(37.123456), longitude: DoubleVO(127.123456)),
    );

    ActivityCenter mockActivityCenter2 = ActivityCenter(
      id: DoubleVO(22221.0),
      name: StringVO("알펜시아"),
      location: LatLng(
          latitude: DoubleVO(37.123456), longitude: DoubleVO(127.123456)),
    );

// RentalShopOperationInfo 모킹 데이터
    RentalShopOperationInfo mockOperationInfo = RentalShopOperationInfo(
      adultAge: IntVO(18),
      rentalShopOperationTimes: ListVO([]),
      rentalReturnMethods: ListVO([
        RentalReturn(
            rentalReturnType: RentalReturnType.rentalShop,
            price: Price(price: DoubleVO(0), priceUnit: PriceUnit.won)),
        RentalReturn(
            rentalReturnType: RentalReturnType.activityCenter,
            price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won))
      ]),
    );

// BankAccount 모킹 데이터
    BankAccount mockBankAccount = BankAccount(
      name: StringVO("Mock Bank"),
      accountNumber: StringVO("1234567890"),
      bankName: StringVO("신광은행"),
    );

    // ContentMedia 모킹 데이터
    ContentMedia mockContentMedia = ContentMedia(
      url: StringVO(
          "https://doorout.s3.ap-northeast-2.amazonaws.com/operation/image/rental_shop/home_background.jpg"),
      mediaKind: MediaKind.image,
    );

    // Height ranges
    Map<HeightUnit, List<Range>> heightRanges = {
      HeightUnit.cm: [
        Range(start: DoubleVO(90), end: DoubleVO(95), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(95), end: DoubleVO(100), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(100), end: DoubleVO(105), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(105), end: DoubleVO(110), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(110), end: DoubleVO(115), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(115), end: DoubleVO(120), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(120), end: DoubleVO(125), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(125), end: DoubleVO(130), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(130), end: DoubleVO(135), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(135), end: DoubleVO(140), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(140), end: DoubleVO(145), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(145), end: DoubleVO(150), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(150), end: DoubleVO(155), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(155), end: DoubleVO(160), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(160), end: DoubleVO(165), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(165), end: DoubleVO(170), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(170), end: DoubleVO(175), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(175), end: DoubleVO(180), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(180), end: DoubleVO(185), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(185), end: DoubleVO(190), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(190), end: DoubleVO(195), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(195), end: DoubleVO(200), decimalPlaces: IntVO(0)),
      ],
      HeightUnit.ft: [
        Range(
            start: DoubleVO(3.0), end: DoubleVO(3.2), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(3.2), end: DoubleVO(3.5), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(3.5), end: DoubleVO(3.8), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(3.8), end: DoubleVO(4.0), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(4.0), end: DoubleVO(4.2), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(4.2), end: DoubleVO(4.5), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(4.5), end: DoubleVO(4.8), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(4.8), end: DoubleVO(5.0), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(5.0), end: DoubleVO(5.2), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(5.2), end: DoubleVO(5.5), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(5.5), end: DoubleVO(5.8), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(5.8), end: DoubleVO(6.0), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(6.0), end: DoubleVO(6.2), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(6.2), end: DoubleVO(6.5), decimalPlaces: IntVO(1)),
        Range(
            start: DoubleVO(6.5), end: DoubleVO(6.7), decimalPlaces: IntVO(1)),
      ],
    };

    // Weight ranges
    Map<WeightUnit, List<Range>> weightRanges = {
      WeightUnit.kg: [
        Range(start: DoubleVO(10), end: DoubleVO(20), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(20), end: DoubleVO(30), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(30), end: DoubleVO(40), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(40), end: DoubleVO(50), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(50), end: DoubleVO(60), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(60), end: DoubleVO(70), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(70), end: DoubleVO(80), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(80), end: DoubleVO(90), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(90), end: DoubleVO(100), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(100), end: DoubleVO(110), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(110), end: DoubleVO(120), decimalPlaces: IntVO(0)),
      ],
      WeightUnit.lb: [
        Range(start: DoubleVO(22), end: DoubleVO(44), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(44), end: DoubleVO(66), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(66), end: DoubleVO(88), decimalPlaces: IntVO(0)),
        Range(start: DoubleVO(88), end: DoubleVO(110), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(110), end: DoubleVO(132), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(132), end: DoubleVO(154), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(154), end: DoubleVO(176), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(176), end: DoubleVO(198), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(198), end: DoubleVO(220), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(220), end: DoubleVO(242), decimalPlaces: IntVO(0)),
        Range(
            start: DoubleVO(242), end: DoubleVO(264), decimalPlaces: IntVO(0)),
      ],
    };

    // Foot sizes
    Map<FootSizeUnit, List<BodySpecValue>> footSizes = {
      FootSizeUnit.mm: [
        BodySpecValue(value: DoubleVO(220), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(225), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(230), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(235), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(240), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(245), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(250), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(255), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(260), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(265), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(270), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(275), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(280), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(285), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(290), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(295), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(300), decimalPlaces: IntVO(0)),
      ],
      FootSizeUnit.usM: [
        BodySpecValue(value: DoubleVO(6.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(10.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(10.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(11.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(11.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(12.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(12.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(13.0), decimalPlaces: IntVO(1)),
      ],
      FootSizeUnit.usW: [
        BodySpecValue(value: DoubleVO(4.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(4.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(5.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(5.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(10.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(10.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(11.0), decimalPlaces: IntVO(1)),
      ],
      FootSizeUnit.usC: [
        BodySpecValue(value: DoubleVO(1.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(1.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(2.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(2.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(3.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(3.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(4.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(4.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(5.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(5.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.0), decimalPlaces: IntVO(1)),
      ],
      FootSizeUnit.eu: [
        BodySpecValue(value: DoubleVO(36), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(37), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(38), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(39), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(40), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(41), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(42), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(43), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(44), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(45), decimalPlaces: IntVO(0)),
        BodySpecValue(value: DoubleVO(46), decimalPlaces: IntVO(0)),
      ],
      FootSizeUnit.ukM: [
        BodySpecValue(value: DoubleVO(5.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(5.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(10.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(10.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(11.0), decimalPlaces: IntVO(1)),
      ],
      FootSizeUnit.ukW: [
        BodySpecValue(value: DoubleVO(3.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(3.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(4.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(4.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(5.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(5.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(6.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(7.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.0), decimalPlaces: IntVO(1)),
      ],
      FootSizeUnit.ukC: [
        BodySpecValue(value: DoubleVO(8.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(8.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(9.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(10.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(10.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(11.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(11.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(12.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(12.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(13.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(13.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(14.0), decimalPlaces: IntVO(1)),
      ],
      FootSizeUnit.jp: [
        BodySpecValue(value: DoubleVO(22.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(22.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(23.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(23.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(24.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(24.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(25.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(25.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(26.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(26.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(27.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(27.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(28.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(28.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(29.0), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(29.5), decimalPlaces: IntVO(1)),
        BodySpecValue(value: DoubleVO(30.0), decimalPlaces: IntVO(1)),
      ],
    };

    //FooShapes
    final footShapes = ListVO([
      FootShape.normal,
      FootShape.highInstep,
      FootShape.wideFoot,
      FootShape.longToes,
      FootShape.flatFeet,
      FootShape.highArch,
    ]);

    const s3BaseUrl =
        "https://doorout.s3.ap-northeast-2.amazonaws.com/operation/image/test_product/";
    const skiTestName = "skiing_test1.png";
    const skiTestName1 = "ski_beginner_test1.png";
    const skiTestName2 = "ski_+intermediate_test1.png";
    const skiTestName3 = "ski_+advanced_test1.png";

    const snowboardTestName = "snowboard_test1.png";
    const snowboardTestName1 = "snowboard_basic_test1.png";
    const snowboardTestName2 = "snowboard_special_test1.png";

    const jacketTestName = "ski_jacket_test1.png";
    const jacketTestName1 = "jacket_basic_test1.png";
    const jacketTestName2 = "jacket_special_test1.png";

    const pantsTestName = "pants_test1.png";
    const pantsTestName1 = "pants_basic_test1.png";
    const pantsTestName2 = "pants_special_test1.png";

    const onepieceTestName = "onepiece_test1.png";
    const onepieceTestName1 = "jumpsuit_basic_Test1.png";
    const onepieceTestName2 = "jumpsuit_character_test1.png";
    const onepieceTestName3 = "jumpsuit_special_test1.png";

    const helmetTestName = "ski_helmet_test1.png";
    const helmetTestName1 = "visor_helmet_test1.png";
    const helmetTestName2 = "character_helmet_test1.png";
    const helmetTestName3 = "helmet_orange_test1.png";

    const goggleLottieName1 = "goggles_test1.png";
    const goggleLottieName2 = "ski_goggle_test1.json";

    const guard = "guard_test1.png";

    const gloveName2 = "gloves_test1.png";
    const gloveName3 = "mitton_gloves_test1.png";

    const bara1 = "mask_test1.png";

    const socks1 = "socks_test1.png";
    const hat1 = "hat_test1.png";

    // RentalShopProductItems 모킹 데이터
    RentalShopProductOptionItem skiProductOptionItem1 =
        RentalShopProductOptionItem(
      id: DoubleVO(14124),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$skiTestName1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("초급스키"),
      description: StringVO("초급스키"),
      price: Price(price: DoubleVO(10000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem skiProductOptionItem2 =
        RentalShopProductOptionItem(
      id: DoubleVO(32132),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$skiTestName2"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("중급스키"),
      description: StringVO("중급스키"),
      price: Price(price: DoubleVO(15000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem skiProductOptionItem3 =
        RentalShopProductOptionItem(
      id: DoubleVO(351235),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$skiTestName3"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("고급스키"),
      description: StringVO("고급스키"),
      price: Price(price: DoubleVO(20000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem snowboardProductOptionItem1 =
        RentalShopProductOptionItem(
      id: DoubleVO(12411),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$snowboardTestName1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("기본 스노우보드"),
      description: StringVO("기본 스노우보드"),
      price: Price(price: DoubleVO(10000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem snowboardProductOptionItem2 =
        RentalShopProductOptionItem(
      id: DoubleVO(42422),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$snowboardTestName2"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("스페셜 스노우보드"),
      description: StringVO("중급 스노우보드"),
      price: Price(price: DoubleVO(15000), priceUnit: PriceUnit.won),
    );

    // RentalShopProductOptionItem snowboardProductOptionItem3 =
    //     RentalShopProductOptionItem(
    //   id: DoubleVO(321421),
    //   media: ContentMedia(
    //     url: StringVO("$s3BaseUrl$snowboardTestName"),
    //     mediaKind: MediaKind.image,
    //   ),
    //   title: StringVO("고급 스노우보드"),
    //   description: StringVO("고급 스노우보드"),
    //   price: Price(price: DoubleVO(20000), priceUnit: PriceUnit.won),
    // );

    RentalShopProductOptionItem jacketOptionItem1 = RentalShopProductOptionItem(
      id: DoubleVO(4240),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$jacketTestName1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("일반 상의"),
      description: StringVO("일반 상의"),
      price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
    );
    RentalShopProductOptionItem jacketOptionItem2 = RentalShopProductOptionItem(
      id: DoubleVO(8932891),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$jacketTestName2"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("고급 상의"),
      description: StringVO("고급 상의"),
      price: Price(price: DoubleVO(10000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem pantsOptionItem1 = RentalShopProductOptionItem(
      id: DoubleVO(42148989),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$pantsTestName1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("일반 하의"),
      description: StringVO("일반 하의"),
      price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem pantsOptionItem2 = RentalShopProductOptionItem(
      id: DoubleVO(1123123),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$pantsTestName2"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("고급 하의"),
      description: StringVO("고급 하의"),
      price: Price(price: DoubleVO(10000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem onePeiceTestOptionItem1 =
        RentalShopProductOptionItem(
      id: DoubleVO(42148989123),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$onepieceTestName1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("점프수트(기본)"),
      description: StringVO("가성비 예쁨!"),
      price: Price(price: DoubleVO(30000), priceUnit: PriceUnit.won),
    );
    RentalShopProductOptionItem onePeiceTestOptionItem2 =
        RentalShopProductOptionItem(
      id: DoubleVO(4219123),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$onepieceTestName2"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("점프수트(케릭터)"),
      description: StringVO("(날다람쥐.. 아시죠?!"),
      price: Price(price: DoubleVO(40000), priceUnit: PriceUnit.won),
    );
    RentalShopProductOptionItem onePeiceTestOptionItem3 =
        RentalShopProductOptionItem(
      id: DoubleVO(4214852523),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$onepieceTestName3"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("점프수트(고급)"),
      description: StringVO("사진찍기 딱 좋은 고급 점프수트!"),
      price: Price(price: DoubleVO(40000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem helmetOptionItem1 = RentalShopProductOptionItem(
      id: DoubleVO(14242442423),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$helmetTestName1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("바이저 헬멧"),
      description: StringVO("헬멧과 고글이 한번에!"),
      price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
    );
    RentalShopProductOptionItem helmetOptionItem2 = RentalShopProductOptionItem(
      id: DoubleVO(32131232),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$helmetTestName2"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("케릭터 헬멧"),
      description: StringVO("독보적인 귀여움!"),
      price: Price(price: DoubleVO(10000), priceUnit: PriceUnit.won),
    );
    RentalShopProductOptionItem helmetOptionItem3 = RentalShopProductOptionItem(
      id: DoubleVO(53253253),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$helmetTestName3"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("기본 헬멧"),
      description: StringVO("안전을 위해 꼭 써야해요"),
      price: Price(price: DoubleVO(10000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem goggleLottieOptionItem1 =
        RentalShopProductOptionItem(
      id: DoubleVO(14124214),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$goggleLottieName1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("일반 고글"),
      description: StringVO("일반 고글"),
      price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem goggleLottieOptionItem2 =
        RentalShopProductOptionItem(
      id: DoubleVO(263546436),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$goggleLottieName2"),
        mediaKind: MediaKind.lottie,
      ),
      title: StringVO("스페셜한 고글"),
      description: StringVO("비싼 고글이에요. 눈 조심!"),
      price: Price(price: DoubleVO(10000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem guardOptionItem1 = RentalShopProductOptionItem(
      id: DoubleVO(141242142144214),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$guard"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("보호대"),
      description: StringVO("보호대"),
      price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
    );

    // 옵션
    RentalShopProductOption skiProductOption = RentalShopProductOption(
      id: DoubleVO(14214124),
      title: StringVO("스키"),
      description: StringVO("신상이 들어왔어요. 스키 초급 선택하시면 됩니다!"),
      isRequired: BooleanVO(false),
      optionItems: ListVO([
        skiProductOptionItem1,
        skiProductOptionItem2,
        skiProductOptionItem3
      ]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(1),
    );

    RentalShopProductOption boardProductOption = RentalShopProductOption(
      id: DoubleVO(14214124),
      title: StringVO("보드"),
      description: StringVO("올해는 파우더보드도 들어왔어요!"),
      isRequired: BooleanVO(false),
      optionItems: ListVO([
        snowboardProductOptionItem1,
        snowboardProductOptionItem2,
        // snowboardProductOptionItem3
      ]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(1),
    );

    RentalShopProductOption apparelJacketProductOption =
        RentalShopProductOption(
      id: DoubleVO(1244124),
      title: StringVO("상의"),
      description: StringVO("따뜻한 상의 찾으세요?"),
      isRequired: BooleanVO(false),
      optionItems: ListVO([jacketOptionItem1, jacketOptionItem2]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(1),
    );

    RentalShopProductOption apparelPantsProductOption = RentalShopProductOption(
      id: DoubleVO(142144124),
      title: StringVO("하의"),
      description: StringVO("상의와 어울리는 하의 찾으세요?"),
      isRequired: BooleanVO(false),
      optionItems: ListVO([pantsOptionItem1, pantsOptionItem2]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(1),
    );

    RentalShopProductOption apparelOnePieceProductOption =
        RentalShopProductOption(
      id: DoubleVO(142144124),
      title: StringVO("점프슈트"),
      description: StringVO("사진찍기 정말 좋은 점프슈트 찾으세요?"),
      isRequired: BooleanVO(false),
      optionItems: ListVO([
        onePeiceTestOptionItem1,
        onePeiceTestOptionItem2,
        onePeiceTestOptionItem3
      ]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(2),
    );

    RentalShopProductOption accessoryHelmetProductOption =
        RentalShopProductOption(
      id: DoubleVO(142144909),
      title: StringVO("헬멧"),
      description: StringVO(""),
      isRequired: BooleanVO(false),
      optionItems:
          ListVO([helmetOptionItem1, helmetOptionItem2, helmetOptionItem3]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(3),
    );

    RentalShopProductOption accessoryGoggleProductOption =
        RentalShopProductOption(
      id: DoubleVO(149890892144),
      title: StringVO("부가장비"),
      description: StringVO("안전을 위해서 꼼꼼하게 확인해주세요!"),
      isRequired: BooleanVO(false),
      optionItems: ListVO([
        goggleLottieOptionItem1,
        goggleLottieOptionItem2,
      ]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(1),
    );

    RentalShopProductOption accessoryGuardProductOption =
        RentalShopProductOption(
      id: DoubleVO(1498904),
      title: StringVO("보호대"),
      description: StringVO("넘어지면 정말 아파요. 보호대 착용하세요!"),
      isRequired: BooleanVO(false),
      optionItems: ListVO([guardOptionItem1]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(1),
    );

    // RentalShopBodySpec instance
    RentalShopBodySpec rentalShopBodySpec = RentalShopBodySpec(
      supplyHeight: SupplyHeight(
        defaultHeightUnit: HeightUnit.cm,
        rangesMap: MapVO(heightRanges),
      ),
      supplyWeight: SupplyWeight(
        defaultWeightUnit: WeightUnit.kg,
        rangesMap: MapVO(weightRanges),
      ),
      supplyFootSize: SupplyFootSize(
        defaultFootSizeUnit: FootSizeUnit.mm,
        supplyFootSizeMap: MapVO(footSizes),
        defaultFootShape: FootShape.normal,
        supplyFootShapes: footShapes,
      ),
    );

    // RentalShopProduct 모킹 데이터
    RentalShopProduct skiProduct = RentalShopProduct(
      id: DoubleVO(138291389),
      type: RentalShopProductType.ski,
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$skiTestName"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("스키"),
      description: StringVO("우아하게 슬로프를 내려오는 즐거움을 느껴보세요!"),
      productOptions: ListVO([skiProductOption]),
    );

    RentalShopProduct snowboardProduct = RentalShopProduct(
      id: DoubleVO(23278387),
      type: RentalShopProductType.snowboard,
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$snowboardTestName"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("스노우보드"),
      description: StringVO("눈 위에서 자유롭게 놀아보세요!"),
      productOptions: ListVO([boardProductOption]),
    );

    RentalShopProduct apparelProduct = RentalShopProduct(
      id: DoubleVO(4),
      type: RentalShopProductType.pants,
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$pantsTestName"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("상/하의"),
      description: StringVO("상의 하의가 나눠져있는 의류에요"),
      productOptions:
          ListVO([apparelJacketProductOption, apparelPantsProductOption]),
    );

    RentalShopProduct onePieceProduct = RentalShopProduct(
      id: DoubleVO(5),
      type: RentalShopProductType.onePiece,
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$onepieceTestName"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("점프슈트"),
      description: StringVO("점프슈트 어떠세요? 이벤트 의상부터 사진찍기 딱 좋은 멋진 의상까지!"),
      productOptions: ListVO([apparelOnePieceProductOption]),
    );

    RentalShopProduct accessaryProduct = RentalShopProduct(
      id: DoubleVO(6),
      type: RentalShopProductType.helmet,
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$helmetTestName"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("악세서리"),
      description: StringVO("악세서리 선택하고 안전하고 즐겁게 즐겨봐요"),
      productOptions: ListVO([
        accessoryHelmetProductOption,
        accessoryGoggleProductOption,
        accessoryGuardProductOption,
      ]),
    );

    /// Recommend
    RentalShopProductOptionItem baraOptionItem1 = RentalShopProductOptionItem(
      id: DoubleVO(4243230),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$bara1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("바라클라바(일반)"),
      description: StringVO("무난한 바라클라바에요"),
      price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
    );

    RentalShopProductOptionItem socksOptionItem1 = RentalShopProductOptionItem(
      id: DoubleVO(42432538930424),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$socks1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("스키 양말"),
      description: StringVO("일반 양말이랑 완전 달라요."),
      price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
      recommend: BooleanVO(true),
    );

    RentalShopProductOptionItem hatOptionItem1 = RentalShopProductOptionItem(
      id: DoubleVO(42432538930424),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$hat1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("모자"),
      description: StringVO("털비니로 힙하게!"),
      price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
      recommend: BooleanVO(true),
    );

    RentalShopProductOption baraOption = RentalShopProductOption(
      id: DoubleVO(142144909),
      title: StringVO("우리 아이, 연인의 피부를 보호해주세요."),
      description: StringVO(""),
      isRequired: BooleanVO(false),
      optionItems: ListVO([
        baraOptionItem1,
        // baraOptionItem2,
      ]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(100),
    );

    RentalShopProductOption socksOption = RentalShopProductOption(
      id: DoubleVO(142145354909),
      title: StringVO("좋은 양말 신고 오래타기!"),
      description: StringVO(""),
      isRequired: BooleanVO(false),
      optionItems: ListVO([socksOptionItem1]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(100),
    );

    RentalShopProductOption hatOption = RentalShopProductOption(
      id: DoubleVO(1421455899),
      title: StringVO("머리를 따뜻하게"),
      description: StringVO(""),
      isRequired: BooleanVO(false),
      optionItems: ListVO([hatOptionItem1]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(100),
    );

    RentalShopProductOption gloveOption = RentalShopProductOption(
      id: DoubleVO(142144909),
      title: StringVO("손이 시려우면 재미가 반감돼요!"),
      description: StringVO(""),
      isRequired: BooleanVO(false),
      optionItems: ListVO([
        RentalShopProductOptionItem(
          id: DoubleVO(424323042141),
          media: ContentMedia(
            url: StringVO("$s3BaseUrl$gloveName3"),
            mediaKind: MediaKind.image,
          ),
          title: StringVO("장갑(일반)"),
          description: StringVO("무난한 장갑이에요"),
          price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
        ),
        RentalShopProductOptionItem(
          id: DoubleVO(424323043543424),
          media: ContentMedia(
            url: StringVO("$s3BaseUrl$gloveName2"),
            mediaKind: MediaKind.image,
          ),
          title: StringVO("장갑(고급)"),
          description: StringVO("뜨거워요.."),
          price: Price(price: DoubleVO(5000), priceUnit: PriceUnit.won),
        ),
      ]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(100),
    );

    RentalShopProduct recommendProduct = RentalShopProduct(
      id: DoubleVO(583194890123890),
      type: RentalShopProductType.recommend,
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$helmetTestName"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("추천 상품"),
      description: StringVO(""),
      productOptions: ListVO([baraOption, hatOption, gloveOption, socksOption]),
    );

    /// LESSON
    RentalShopProductOptionItem lesson1 = RentalShopProductOptionItem(
      id: DoubleVO(995478272),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$bara1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("LV.01"),
      description: StringVO("2시간 강습"),
      price: Price(price: DoubleVO(150000), priceUnit: PriceUnit.won),
      recommend: BooleanVO(false),
    );
    RentalShopProductOptionItem lesson11 = RentalShopProductOptionItem(
      id: DoubleVO(995475322),
      media: ContentMedia(
        url: StringVO("$s3BaseUrl$bara1"),
        mediaKind: MediaKind.image,
      ),
      title: StringVO("LV.01 (영상 포함)"),
      description: StringVO("2시간 강습"),
      price: Price(price: DoubleVO(170000), priceUnit: PriceUnit.won),
      recommend: BooleanVO(true),
    );

    RentalShopProductOptionItem lesson2 = RentalShopProductOptionItem(
      id: DoubleVO(996454785858),
      media: null,
      title: StringVO("LV.02"),
      description: StringVO("2시간 강습"),
      price: Price(price: DoubleVO(350000), priceUnit: PriceUnit.won),
      recommend: BooleanVO(false),
    );

    RentalShopProductOptionItem lesson22 = RentalShopProductOptionItem(
      id: DoubleVO(99542385858),
      media: null,
      title: StringVO("LV.02 (영상 포함)"),
      description: StringVO("2시간 강습"),
      price: Price(price: DoubleVO(370000), priceUnit: PriceUnit.won),
      recommend: BooleanVO(true),
    );

    RentalShopProductOptionItem lesson3 = RentalShopProductOptionItem(
      id: DoubleVO(99547553458),
      media: null,
      title: StringVO("LV.03"),
      description: StringVO("2시간 강습"),
      price: Price(price: DoubleVO(500000), priceUnit: PriceUnit.won),
      recommend: BooleanVO(false),
    );

    RentalShopProductOptionItem lesson33 = RentalShopProductOptionItem(
      id: DoubleVO(99958325858),
      media: null,
      title: StringVO("LV.03 (영상 포함)"),
      description: StringVO("2시간 강습"),
      price: Price(price: DoubleVO(520000), priceUnit: PriceUnit.won),
      recommend: BooleanVO(true),
    );

    RentalShopProductOption lessonOption = RentalShopProductOption(
      id: DoubleVO(142144909),
      title: StringVO("레벨별 강습권 입니다.?"),
      description: StringVO("보통 한번에 2시간이 소요돼요. 여러번 받으실거면 갯수를 올려주세요."),
      isRequired: BooleanVO(false),
      optionItems:
          ListVO([lesson1, lesson11, lesson2, lesson22, lesson3, lesson33]),
      selectedOptionItem: null,
      minSelection: IntVO(0),
      maxSelection: IntVO(100),
    );

    RentalShopProduct lessonProduct = RentalShopProduct(
      id: DoubleVO(583194890123890),
      type: RentalShopProductType.recommend,
      media: null,
      title: StringVO("추천 상품"),
      description: StringVO(""),
      productOptions: ListVO([
        lessonOption,
      ]),
    );

    // RentalShop 모킹 데이터
    RentalShop mockRentalShop = RentalShop(
      id: DoubleVO(1.0),
      name: StringVO("스키존"),
      // activityCenters: ListVO<ActivityCenter>([mockActivityCenter1, mockActivityCenter2]),
      activityCenters: ListVO<ActivityCenter>([
        mockActivityCenter1,
      ]),
      operationInfo: mockOperationInfo,
      bankAccounts: ListVO<BankAccount>([mockBankAccount]),
      contentMedias: ListVO<ContentMedia>([mockContentMedia]),
      mainEquipmentProducts: ListVO([skiProduct, snowboardProduct]),
      apparelEquipmentProducts: ListVO([apparelProduct, onePieceProduct]),
      accessoryEquipmentProducts: ListVO([accessaryProduct]),
      recommendProduct: recommendProduct,
      lessonProducts: lessonProduct,
      supplyBodySpec: rentalShopBodySpec,
    );
    return Future.delayed(
        const Duration(seconds: 1), () => right(mockRentalShop));
    // if (response.statusCode == 200) {
    //   return Future.delayed(
    //       const Duration(seconds: 1), () => right(mockRentalShop));
    // } else {
    //   return left(const UserFailure.serverError());
  }

  @override
  Future<Either<RentalShopFailure, List<DateTimeTickets>>> getTimeTickets(
      {required DateTime startAt, required DateTime endAt}) {
    List<DateTimeTickets> dateTimeTicketsList = [];
    // 1일차 (2024-12-01)
    dateTimeTicketsList.add(DateTimeTickets(
      startAt: DateTimeVO(DateTime(2024, 12, 1, 0, 0)),
      endAt: DateTimeVO(DateTime(2024, 12, 1, 23, 59)),
      timeTickets: ListVO<TimeTicket>([
        TimeTicket(
          id: DoubleVO(1534125243),
          name: StringVO("종일권"),
          price: Price(price: DoubleVO(50000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(25125312),
          name: StringVO("오전권"),
          price: Price(price: DoubleVO(25000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(34214215),
          name: StringVO("오후권"),
          price: Price(price: DoubleVO(30000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(454325),
          name: StringVO("야간권"),
          price: Price(price: DoubleVO(20000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(5124124),
          name: StringVO("오야권"),
          price: Price(price: DoubleVO(40000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(65125),
          name: StringVO("심야권"),
          price: Price(price: DoubleVO(15000), priceUnit: PriceUnit.won),
        ),
      ]),
    ));

    // 2일차 (2024-12-02)
    dateTimeTicketsList.add(DateTimeTickets(
      startAt: DateTimeVO(DateTime(2024, 12, 2, 0, 0)),
      endAt: DateTimeVO(DateTime(2024, 12, 2, 23, 59)),
      timeTickets: ListVO<TimeTicket>([
        TimeTicket(
          id: DoubleVO(753215),
          name: StringVO("종일권"),
          price: Price(price: DoubleVO(50000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(65437568),
          name: StringVO("오전권"),
          price: Price(price: DoubleVO(25000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(867589),
          name: StringVO("오후권"),
          price: Price(price: DoubleVO(30000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(172457340),
          name: StringVO("야간권"),
          price: Price(price: DoubleVO(20000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(1587681),
          name: StringVO("오야권"),
          price: Price(price: DoubleVO(40000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(15125634262),
          name: StringVO("심야권"),
          price: Price(price: DoubleVO(15000), priceUnit: PriceUnit.won),
        ),
      ]),
    ));

    // 3일차 (2024-12-03)
    dateTimeTicketsList.add(DateTimeTickets(
      startAt: DateTimeVO(DateTime(2024, 12, 3, 0, 0)),
      endAt: DateTimeVO(DateTime(2024, 12, 3, 23, 59)),
      timeTickets: ListVO<TimeTicket>([
        TimeTicket(
          id: DoubleVO(151353),
          name: StringVO("종일권"),
          price: Price(price: DoubleVO(50000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(1754374),
          name: StringVO("오전권"),
          price: Price(price: DoubleVO(25000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(125435),
          name: StringVO("오후권"),
          price: Price(price: DoubleVO(30000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(187656),
          name: StringVO("야간권"),
          price: Price(price: DoubleVO(20000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(14367),
          name: StringVO("오야권"),
          price: Price(price: DoubleVO(40000), priceUnit: PriceUnit.won),
        ),
        TimeTicket(
          id: DoubleVO(1743578),
          name: StringVO("심야권"),
          price: Price(price: DoubleVO(15000), priceUnit: PriceUnit.won),
        ),
      ]),
    ));
    return Future.delayed(
        const Duration(seconds: 1), () => right(dateTimeTicketsList));
  }
}
