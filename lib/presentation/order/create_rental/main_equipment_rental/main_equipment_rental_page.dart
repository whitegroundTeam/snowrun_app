import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/rental/actor/rental_actor_bloc.dart';
import 'package:doortoout/application/rental_shop/rental_shop_bloc.dart';
import 'package:doortoout/domain/contents/model/content_media.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product.dart';
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

class MainEquipmentRentalPage extends StatefulWidget {
  const MainEquipmentRentalPage({
    super.key,
  });

  @override
  State createState() => MainEquipmentRentalPageState();
}

class MainEquipmentRentalPageState extends State<MainEquipmentRentalPage> {
  static const double itemHeight = 124;
  static const double imageSize = 92;
  static const double selectedImageSize = 56;

  @override
  Widget build(BuildContext context) {
    final RentalActorBloc rentalActorBloc = context.read<RentalActorBloc>();
    final rentalShop = context.read<RentalShopBloc>().state.rentalShop;

    //TODO : map안의 value만큼 순회하면서 고고,, type으로 다국어 만들어서 세팅해주면 좋을듯,, 근데 일단은 한글로만

    return BlocBuilder<RentalActorBloc, RentalActorState>(
      bloc: rentalActorBloc,
      builder: (context, state) {
        final selectedMainEquipments = state
            .rental.mainEquipmentsRentalProduct.productOptions
            .getOrCrash();
        if (selectedMainEquipments.isNotEmpty) {
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
                            style: AppTextStyle.heading02.copyWith(
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
                          final mainEquipmentsRentalProduct = rentalShop
                              .mainEquipmentProducts
                              .getOrCrash()
                              .firstWhere(
                                (product) =>
                            product.id.getOrCrash() ==
                                state.rental.mainEquipmentsRentalProduct
                                    .id
                                    .getOrCrash(),
                            orElse: () =>
                            throw Exception('Product not found'),
                          );

                          // Update the selected state of the optionItems based on state.rental.mainEquipmentsRentalProduct
                          final updatedmainEquipmentsRentalProduct =
                          mainEquipmentsRentalProduct.copyWith(
                            productOptions: ListVO(
                                mainEquipmentsRentalProduct.productOptions
                                    .getOrCrash()
                                    .map((option) {
                                  // Find matching option in the state.rental product
                                  final matchingOption = state.rental
                                      .mainEquipmentsRentalProduct.productOptions
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
                              rentalShopProduct: updatedmainEquipmentsRentalProduct,
                              onResult: (value) {
                            RentalShopProduct? selectedRentalShopProduct =
                                value as RentalShopProduct?;
                            if (selectedRentalShopProduct != null) {
                              rentalActorBloc.add(
                                  RentalActorEvent.setMainEquipment(
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
                                  "고르신 장비가 삭제됩니다.\n의류 및 부가장비는 삭제되지 않습니다😊",
                              positiveButtonText: "삭제하기",
                              negativeButtonText: "취소",
                              onClickPositiveButton: () {
                            rentalActorBloc.add(
                                RentalActorEvent.setMainEquipment(
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
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: selectedMainEquipments.length,
                        itemBuilder: (context, index) {
                          final selectedProductOption =
                              selectedMainEquipments[index];

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
                                  top: 12,
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
                                  style: AppTextStyle.heading02,
                                ),
                                const SizedBox(
                                  height: 4,
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
                  '어떤 장비를 렌탈하시겠어요?',
                  style: AppTextStyle.heading01,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount:
                        rentalShop.mainEquipmentProducts.getOrCrash().length,
                    itemBuilder: (context, index) {
                      var product =
                          rentalShop.mainEquipmentProducts.getOrCrash()[index];

                      return CommonDetector(
                        onTap: () async {
                          SelectRentalOptionPage.pushSelectRentalOptionPage(
                              context,
                              rentalShopProduct: product, onResult: (value) {
                            RentalShopProduct? selectedRentalShopProduct =
                                value as RentalShopProduct?;
                            if (selectedRentalShopProduct != null) {
                              rentalActorBloc.add(
                                  RentalActorEvent.setMainEquipment(
                                      selectedRentalShopProduct:
                                          selectedRentalShopProduct));
                            }
                          });
                        },
                        child: Container(
                          height: itemHeight,
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
                                          product.media?.url.getOrCrash() ?? "",
                                          width: imageSize,
                                          height: imageSize),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: CommonNetworkImage(
                                        imageUrl:
                                            product.media?.url.getOrCrash() ??
                                                "",
                                        boxFit: BoxFit.cover,
                                        width: imageSize,
                                        height: imageSize,
                                      ),
                                    ),
                              const SizedBox(
                                width: 12,
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
