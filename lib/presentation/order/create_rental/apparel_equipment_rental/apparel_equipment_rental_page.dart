import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/rental/actor/rental_actor_bloc.dart';
import 'package:doortoout/application/rental_shop/rental_shop_bloc.dart';
import 'package:doortoout/domain/contents/model/content_media.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option.dart';
import 'package:doortoout/presentation/core/common_tip.dart';
import 'package:doortoout/presentation/core/appbar/underline_text.dart';
import 'package:doortoout/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/common_network_image.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/presentation/order/create_rental/select_rental_option_page.dart';
import 'package:doortoout/utils/price_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class ApparelEquipmentRentalPage extends StatefulWidget {
  const ApparelEquipmentRentalPage({
    super.key,
  });

  @override
  State createState() => ApparelEquipmentRentalPageState();
}

class ApparelEquipmentRentalPageState
    extends State<ApparelEquipmentRentalPage> {
  static const double itemHeight = 124;
  static const double imageSize = 92;
  static const double selectedImageSize = 56;

  @override
  Widget build(BuildContext context) {
    final RentalActorBloc rentalActorBloc = context.read<RentalActorBloc>();
    final rentalShop = context.read<RentalShopBloc>().state.rentalShop;

    return BlocBuilder<RentalActorBloc, RentalActorState>(
      bloc: rentalActorBloc,
      builder: (context, state) {
        final selectedApparelEquipments = state
            .rental.apparelEquipmentsRentalProduct.productOptions
            .getOrCrash();
        if (selectedApparelEquipments.isNotEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Card(
              color: AppStyle.inputFieldBackground,
              elevation: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 48),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 3,
                          ),
                          child: Icon(
                            Icons.check_circle_outline_sharp,
                            size: 32.0,
                            color: AppStyle.accentGreen,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            '선택한 장비',
                            style: AppTextStyle.headingShadow01.copyWith(
                              color: AppStyle.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      CommonDetector(
                        onTap: () {
                          final apparelEquipmentsRentalProduct = rentalShop
                              .apparelEquipmentProducts
                              .getOrCrash()
                              .firstWhere(
                                (product) =>
                                    product.id.getOrCrash() ==
                                    state.rental.apparelEquipmentsRentalProduct
                                        .id
                                        .getOrCrash(),
                                orElse: () =>
                                    throw Exception('Product not found'),
                              );

// Update the selected state of the optionItems based on state.rental.apparelEquipmentsRentalProduct
                          final updatedApparelEquipmentsRentalProduct =
                              apparelEquipmentsRentalProduct.copyWith(
                            productOptions: ListVO(
                                apparelEquipmentsRentalProduct.productOptions
                                    .getOrCrash()
                                    .map((option) {
                              // Find matching option in the state.rental product
                              final matchingOption = state.rental
                                  .apparelEquipmentsRentalProduct.productOptions
                                  .getOrCrash()
                                  .firstWhere(
                                    (rentalOption) =>
                                        rentalOption.id.getOrCrash() ==
                                        option.id.getOrCrash(),
                                    orElse: () =>
                                        option, // Default to the current option if not found
                                  );

                              // Set the isSelected value based on the matching option's state
                              final updatedOptionItems = option.optionItems
                                  .getOrCrash()
                                  .map((optionItem) {
                                final matchingOptionItem = matchingOption
                                    .optionItems
                                    .getOrCrash()
                                    .firstWhere(
                                      (rentalOptionItem) =>
                                          rentalOptionItem.id.getOrCrash() ==
                                          optionItem.id.getOrCrash(),
                                      orElse: () =>
                                          optionItem, // Default to the current optionItem if not found
                                    );

                                return optionItem.copyWith(
                                  isSelected: matchingOptionItem.isSelected,
                                );
                              }).toList();

                              return option.copyWith(
                                  optionItems: ListVO(updatedOptionItems));
                            }).toList()),
                          );

                          SelectRentalOptionPage.pushSelectRentalOptionPage(
                              context,
                              rentalShopProduct:
                                  updatedApparelEquipmentsRentalProduct,
                              onResult: (value) {
                            RentalShopProduct? selectedRentalShopProduct =
                                value as RentalShopProduct?;
                            if (selectedRentalShopProduct != null) {
                              rentalActorBloc.add(
                                  RentalActorEvent.setApparelEquipment(
                                      selectedRentalShopProduct:
                                          selectedRentalShopProduct));
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          child: UnderlineText(
                            Text(
                              "수정하기",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.body04.copyWith(
                                color: AppStyle.white.withOpacity(0.95),
                              ),
                            ),
                            AppStyle.white,
                            width: 1,
                          ),
                        ),
                      ),
                      CommonDetector(
                        onTap: () {
                          showCommonBottomSheet(context,
                              title: "정말 삭제하시겠어요?",
                              description:
                                  "고르신 의류가 삭제됩니다.\n장비 및 부가장비는 삭제되지 않습니다😊",
                              positiveButtonText: "삭제하기",
                              negativeButtonText: "취소",
                              onClickPositiveButton: () {
                            rentalActorBloc.add(
                                RentalActorEvent.setApparelEquipment(
                                    selectedRentalShopProduct:
                                        RentalShopProduct.empty()));
                            context.pop();
                          }, onClickNegativeButton: () {
                            context.pop();
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                          child: UnderlineText(
                            Text(
                              "삭제하기",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.body04.copyWith(
                                color: AppStyle.white.withOpacity(0.95),
                              ),
                            ),
                            AppStyle.white,
                            width: 1,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                  // const SizedBox(height: 12,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: selectedApparelEquipments.length,
                        itemBuilder: (context, index) {
                          final selectedProductOption =
                              selectedApparelEquipments[index];

                          final List<Widget> selectedProductOptionItemWidgets =
                              selectedProductOption.optionItems
                                  .getOrCrash()
                                  .map((optionItem) {
                            return CommonDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppStyle.white.withOpacity(0.2),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                margin: const EdgeInsets.only(
                                  top: 8,
                                ),
                                child: Row(
                                  children: [
                                    optionItem.media?.mediaKind ==
                                            MediaKind.lottie
                                        ? ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Lottie.network(
                                              optionItem.media?.url
                                                      .getOrCrash() ??
                                                  "",
                                              width: selectedImageSize,
                                              height: selectedImageSize,
                                            ),
                                          )
                                        : ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: CommonNetworkImage(
                                              imageUrl: optionItem.media?.url
                                                      .getOrCrash() ??
                                                  "",
                                              boxFit: BoxFit.cover,
                                              width: selectedImageSize,
                                              height: selectedImageSize,
                                            ),
                                          ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          Text(
                                            optionItem.title.getOrCrash(),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: AppTextStyle.body03,
                                          ),
                                          Text(
                                            priceText(optionItem.price),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: AppTextStyle.body03,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList();

                          return CommonDetector(
                            onTap: () async {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  selectedProductOption.title.getOrCrash(),
                                  style: AppTextStyle.headingShadow02,
                                ),
                                Column(
                                  children: selectedProductOptionItemWidgets,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 48),
                Text(
                  '원하시는 의류를 선택해주세요',
                  style: AppTextStyle.headingShadow01,
                ),
                const SizedBox(height: 8,),
                CommonTip(
                  tipTitle: "혹시 보호대를 갖고 계시다면 의류를 고르실때 한치수 더 큰 사이즈로 선택해주세요.",
                  tipTitleStyle: AppTextStyle.caption00.copyWith(
                    color: AppStyle.white,
                  ),
                  iconColor: AppStyle.accentOrange,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount:
                        rentalShop.apparelEquipmentProducts.getOrCrash().length,
                    itemBuilder: (context, index) {
                      var product = rentalShop.apparelEquipmentProducts
                          .getOrCrash()[index];

                      return CommonDetector(
                        onTap: () async {
                          SelectRentalOptionPage.pushSelectRentalOptionPage(
                              context,
                              rentalShopProduct: product, onResult: (value) {
                            RentalShopProduct? selectedRentalShopProduct =
                                value as RentalShopProduct?;
                            if (selectedRentalShopProduct != null) {
                              rentalActorBloc.add(
                                  RentalActorEvent.setApparelEquipment(
                                      selectedRentalShopProduct:
                                          selectedRentalShopProduct));
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppStyle.white.withOpacity(0.3),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          margin: const EdgeInsets.symmetric(
                            vertical: 4,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              product.media?.mediaKind == MediaKind.lottie
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Lottie.network(
                                          product.media?.url.getOrCrash() ??
                                              ""),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: CommonNetworkImage(
                                        imageUrl:
                                            product.media?.url.getOrCrash() ??
                                                "",
                                        boxFit: BoxFit.cover,
                                        width: 96,
                                        height: 96,
                                      ),
                                    ),
                              const SizedBox(
                                width: 24,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product.title.getOrCrash(),
                                      style: AppTextStyle.heading03,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      product.description.getOrCrash(),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyle.body03,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
