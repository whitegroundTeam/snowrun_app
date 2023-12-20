import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/cart/cart_bloc.dart';
import 'package:snowrun_app/application/rental_shop/rental_shop_bloc.dart';
import 'package:snowrun_app/domain/contents/model/content_media.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:snowrun_app/presentation/core/common_tag.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:snowrun_app/utils/price_util.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class LessonPassOrderPage extends StatefulWidget {
  const LessonPassOrderPage({
    super.key,
  });

  @override
  State createState() => LessonPassOrderPageState();
}

class LessonPassOrderPageState extends State<LessonPassOrderPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final lessonProduct =
          context.read<RentalShopBloc>().state.rentalShop.lessonProducts;
      if (lessonProduct != null) {
        context
            .read<CartBloc>()
            .add(CartEvent.initLessonProduct(rentalShopProduct: lessonProduct));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = context.read<CartBloc>();

    return BlocBuilder<CartBloc, CartState>(
      bloc: cartBloc,
      builder: (context, state) {
        final productOptions =
            state.cart.lessonProduct?.productOptions.getOrCrash() ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    bottom: 120,
                  ),
                  itemCount: productOptions.length,
                  itemBuilder: (context, index) {
                    final productOption = productOptions[index];

                    final cartOptionItems =
                        state.cart.lessonProduct?.productOptions
                            .getOrCrash()
                            .firstWhere(
                              (opt) => opt == productOption,
                              orElse: () => productOption,
                            )
                            .optionItems
                            .getOrCrash();

                    final List<Widget> optionWidgets = productOption.optionItems
                        .getOrCrash()
                        .map((optionItem) {
                      final cartItem = cartOptionItems?.firstWhere(
                        (item) => item == optionItem,
                        orElse: () => optionItem, // 없으면 원본 item을 사용
                      );

                      // cartItem에서 수량을 가져옴, 없으면 기본값 0
                      int quantity = cartItem?.quantity ?? 0;

                      return CommonDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: (optionItem.quantity ?? 0) > 0
                                  ? AppStyle.accentColor
                                  : AppStyle.white.withOpacity(0.3),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          margin: const EdgeInsets.only(
                            top: 8,
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 16,
                                  bottom: 16,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // optionItem.media.mediaKind ==
                                    //     MediaKind.lottie
                                    //     ? ClipRRect(
                                    //   borderRadius:
                                    //   BorderRadius.circular(8),
                                    //   child: Lottie.network(
                                    //       optionItem.media.url
                                    //           .getOrCrash() ??
                                    //           "",
                                    //       width: imageSize,
                                    //       height: imageSize),
                                    // )
                                    //     : ClipRRect(
                                    //   borderRadius:
                                    //   BorderRadius.circular(8),
                                    //   child: CommonNetworkImage(
                                    //     imageUrl: optionItem.media.url
                                    //         .getOrCrash() ??
                                    //         "",
                                    //     boxFit: BoxFit.cover,
                                    //     width: imageSize,
                                    //     height: imageSize,
                                    //   ),
                                    // ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    optionItem.title
                                                        .getOrCrash(),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        AppTextStyle.heading03,
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: optionItem.recommend
                                                          ?.getOrCrash() ==
                                                      true,
                                                  child: const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 2,
                                                      right: 16,
                                                    ),
                                                    child: CommonTag(
                                                      tagName: "추천",
                                                      tagColor:
                                                          AppStyle.accentOrange,
                                                      tagNameColor:
                                                          AppStyle.black,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              optionItem.description
                                                  .getOrCrash(),
                                              style: AppTextStyle.body03
                                                  .copyWith(
                                                      color: AppStyle.white
                                                          .withOpacity(0.6)),
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    priceText(optionItem.price),
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: AppTextStyle.body02,
                                                  ),
                                                ),
                                                CommonDetector(
                                                  onTap: () {
                                                    cartBloc.add(CartEvent
                                                        .removeLessonItemQuantity(
                                                            optionItem:
                                                                optionItem));
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 12,
                                                      bottom: 12,
                                                      right: 8,
                                                      left: 12,
                                                    ),
                                                    child: Image.asset(
                                                      width: 24,
                                                      height: 24,
                                                      'assets/webp/quantity_minus.webp',
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "$quantity",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppTextStyle.body02,
                                                ),
                                                CommonDetector(
                                                  onTap: () {
                                                    cartBloc.add(CartEvent
                                                        .addLessonItemQuantity(
                                                            optionItem:
                                                                optionItem));
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 12,
                                                      bottom: 12,
                                                      right: 16,
                                                      left: 8,
                                                    ),
                                                    child: Image.asset(
                                                      width: 24,
                                                      height: 24,
                                                      'assets/webp/quantity_plus.webp',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Visibility(
                                visible: optionItem.isSelected == true,
                                child: Positioned(
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    // height: itemHeight,
                                    decoration: BoxDecoration(
                                      color: AppStyle.black.withOpacity(0.15),
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppStyle.accentColor,
                                      ),
                                      margin: const EdgeInsets.only(
                                        left: 12,
                                        right: 12,
                                      ),
                                      padding: const EdgeInsets.all(
                                        2,
                                      ),
                                      child: Image.asset(
                                        width: 24,
                                        height: 24,
                                        'assets/webp/check.webp',
                                        color: AppStyle.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList();

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 32,
                        ),
                        Visibility(
                          visible: productOption.title.getOrCrash().isNotEmpty,
                          child: Text(
                            productOption.title.getOrCrash() ?? '',
                            style: AppTextStyle.heading02,
                          ),
                        ),
                        Visibility(
                          visible:
                              productOption.description.getOrCrash().isNotEmpty,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              productOption.description.getOrCrash() ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.body03.copyWith(
                                  color: AppStyle.white.withOpacity(0.6)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                        Column(
                          children: optionWidgets,
                        ),
                        Visibility(
                          visible: index < productOptions.length - 1,
                          child: Container(
                            height: 0.5,
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            color: AppStyle.secondaryBackground,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
