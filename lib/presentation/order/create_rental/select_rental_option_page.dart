import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/rental/actor/rental_option_actor_bloc.dart';
import 'package:doortoout/domain/contents/model/content_media.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option_item.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/core/appbar/common_app_bar.dart';
import 'package:doortoout/presentation/core/common_button.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/common_info_button.dart';
import 'package:doortoout/presentation/core/common_network_image.dart';
import 'package:doortoout/presentation/core/common_scaffold.dart';
import 'package:doortoout/presentation/core/common_tip.dart';
import 'package:doortoout/presentation/core/toast/common_toast.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/presentation/order/memo_bubble_expanded_page.dart';
import 'package:doortoout/utils/price_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SelectRentalOptionPage extends StatefulWidget {
  final RentalShopProduct? rentalShopProduct;

  const SelectRentalOptionPage({
    super.key,
    this.rentalShopProduct,
  });

  @override
  State createState() => SelectRentalOptionPageState();

  static pushSelectRentalOptionPage(BuildContext context,
      {RentalShopProduct? rentalShopProduct,
      Function(Object? value)? onResult}) {
    context.push(
      '/select-rental-option',
      extra: {'rentalShopProduct': rentalShopProduct},
    ).then((value) => onResult?.call(value));
  }
}

class SelectRentalOptionPageState extends State<SelectRentalOptionPage>
    with TickerProviderStateMixin {
  static const double itemHeight = 128;
  static const double imageSize = 92;
  final rentalOptionActorBloc = getIt<RentalOptionActorBloc>();

  OverlayEntry? _overlayEntry;
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isExpandedMemoOverlay = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final productOptions =
          widget.rentalShopProduct?.productOptions.getOrCrash() ?? [];
      rentalOptionActorBloc
          .add(RentalOptionActorEvent.init(productOptions: productOptions));
    });

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  void showFABOverlay(Offset? offset) {
    if (offset == null) {
      return;
    }
    _overlayEntry = OverlayEntry(
      builder: (context) => AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          double screenWidth = MediaQuery.of(context).size.width;
          double screenHeight = MediaQuery.of(context).size.height;
          return Positioned(
            left: offset.dx * (1 - _animation.value),
            top: offset.dy * (1 - _animation.value),
            width: screenWidth * _animation.value,
            height: screenHeight * _animation.value,
            child: MemoBubbleExpandedPage(
              onClose: () {
                _controller
                    .reverse()
                    .then((value) => _overlayEntry?.remove());
                isExpandedMemoOverlay = false;
              },
            ),
          );
        },
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    _controller.forward();
    isExpandedMemoOverlay = true;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rentalShopProduct = widget.rentalShopProduct;

    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if(isExpandedMemoOverlay) {
          _controller
              .reverse()
              .then((value) => _overlayEntry?.remove());
          isExpandedMemoOverlay = false;
          return;
        }

        if (didPop) {
          return;
        }
        context.pop();
        return;
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<RentalOptionActorBloc>(
            create: (context) => rentalOptionActorBloc,
          ),
          BlocListener<RentalOptionActorBloc, RentalOptionActorState>(
            bloc: rentalOptionActorBloc,
            listener: (context, state) {
              if (state.status == RentalOptionSelectionStatus.max) {
                showToast(context, "다른 옵션을 해제한 후 선택해주세요.");
              }
            },
          ),
        ],
        child: CommonScaffold(
          //TODO : 고객앱 BUBBLE 기획확정 후 수정
          // useDraggableBubble: true,
          // onTapBubble: (offSet) {
          //   WidgetsBinding.instance.addPostFrameCallback((_) {
          //     showFABOverlay(offSet);
          //   });
          // },
          body: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  CommonAppBar(
                    isSliver: true,
                    appBarType: AppBarType.back,
                    onClickCloseButton: () {
                      context.pop();
                    },
                    title:
                        rentalShopProduct?.title.getOrCrash().isNotEmpty == true
                            ? "${rentalShopProduct?.title.getOrCrash()} 선택"
                            : "",
                  ),
                  SliverToBoxAdapter(
                    child: Visibility(
                      visible: rentalShopProduct?.description
                              .getOrCrash()
                              .isNotEmpty ==
                          true,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 16,
                        ),
                        child: CommonTip(
                          tipTitle:
                              rentalShopProduct?.description.getOrCrash() ?? "",
                          tipTitleStyle: AppTextStyle.caption00.copyWith(
                            color: AppStyle.white,
                          ),
                          iconColor: AppStyle.accentOrange,
                        ),
                      ),
                    ),
                  ),
                  BlocBuilder<RentalOptionActorBloc, RentalOptionActorState>(
                    bloc: rentalOptionActorBloc,
                    builder: (context, state) {
                      final rentalShopProductOptions = state.productOptions;
                      return SliverPadding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        sliver: SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              final productOption =
                                  rentalShopProductOptions[index];

                              final List<Widget> optionWidgets = productOption
                                  .optionItems
                                  .getOrCrash()
                                  .map((optionItem) {
                                return CommonDetector(
                                  onTap: () {
                                    rentalOptionActorBloc.add(
                                      RentalOptionActorEvent.select(
                                        rentalShopProductOption: productOption,
                                        rentalShopProductOptionItem: optionItem,
                                      ),
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: itemHeight,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: optionItem.isSelected == true
                                                // color: selectedOptions.contains(optionItem)
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  optionItem.media?.mediaKind ==
                                                          MediaKind.lottie
                                                      ? ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child: Lottie.network(
                                                              optionItem
                                                                      .media?.url
                                                                      .getOrCrash() ??
                                                                  "",
                                                              width: imageSize,
                                                              height: imageSize),
                                                        )
                                                      : ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          child:
                                                              CommonNetworkImage(
                                                            imageUrl: optionItem
                                                                    .media?.url
                                                                    .getOrCrash() ??
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
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          optionItem.title
                                                              .getOrCrash(),
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: AppTextStyle
                                                              .heading03,
                                                        ),
                                                        Text(
                                                          optionItem.description
                                                              .getOrCrash(),
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: AppTextStyle
                                                              .body03
                                                              .copyWith(
                                                                  color: AppStyle
                                                                      .white
                                                                      .withOpacity(
                                                                          0.6)),
                                                        ),
                                                        const Spacer(),
                                                        Text(
                                                          priceText(
                                                              optionItem.price),
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style:
                                                              AppTextStyle.body02,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Visibility(
                                              visible:
                                                  optionItem.isSelected == true,
                                              child: Positioned(
                                                right: 0,
                                                top: 0,
                                                bottom: 0,
                                                child: Container(
                                                  height: itemHeight,
                                                  decoration: BoxDecoration(
                                                    color: AppStyle.black
                                                        .withOpacity(0.15),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(12),
                                                      bottomRight:
                                                          Radius.circular(12),
                                                    ),
                                                  ),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
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
                                      // Visibility(
                                      //   visible: optionItem.isValid == false,
                                      //   child: Container(
                                      //     height: itemHeight,
                                      //     decoration: BoxDecoration(
                                      //       color: AppStyle.black.withOpacity(0.65),
                                      //       border: Border.all(
                                      //         color: AppStyle.white.withOpacity(0.3),
                                      //         width: 1,
                                      //       ),
                                      //       borderRadius: BorderRadius.circular(12),
                                      //     ),
                                      //     padding: const EdgeInsets.only(
                                      //       left: 24,
                                      //     ),
                                      //     margin: const EdgeInsets.only(
                                      //       top: 8,
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                );
                              }).toList();

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Visibility(
                                    visible: productOption.title
                                        .getOrCrash()
                                        .isNotEmpty,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Visibility(
                                          visible: productOption.minSelection
                                                  .getOrCrash() >
                                              0,
                                          child: Text(
                                            ' *',
                                            style:
                                                AppTextStyle.heading05.copyWith(
                                              color: AppStyle.accentRed,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Expanded(
                                          child: Text(
                                            productOption.title.getOrCrash() ??
                                                '',
                                            style: AppTextStyle.heading03,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "최대 ${productOption.maxSelection.getOrCrash()}개 선택",
                                          style: AppTextStyle.caption00.copyWith(
                                            color:
                                                AppStyle.white.withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Visibility(
                                    visible: productOption.description
                                        .getOrCrash()
                                        .isNotEmpty,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        productOption.description.getOrCrash() ??
                                            '',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyle.body03,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Column(
                                    children: optionWidgets,
                                  ),
                                ],
                              );
                            },
                            childCount: rentalShopProductOptions.length,
                          ),
                        ),
                      );
                    },
                  ),
                  const SliverToBoxAdapter(
                      child: SizedBox(
                    height: 96,
                  )),
                ],
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: BlocBuilder<RentalOptionActorBloc, RentalOptionActorState>(
                  bloc: rentalOptionActorBloc,
                  builder: (context, state) {
                    return CommonButton(
                      onTap: () {
                        if (state.isValid) {
                          final selectedProductOptions = state.productOptions
                              .map((productOption) {
                                // optionItems 중에서 isSelected가 true인 것만 필터링
                                final selectedItems = productOption.optionItems
                                    .getOrCrash()
                                    .where((item) => item.isSelected == true)
                                    .toList();

                                // 선택된 항목이 있다면 productOption을 업데이트하여 반환
                                if (selectedItems.isNotEmpty) {
                                  return productOption.copyWith(
                                      optionItems: ListVO(selectedItems));
                                } else {
                                  return null; // 선택된 항목이 없으면 null을 반환
                                }
                              })
                              .where((productOption) =>
                                  productOption != null) // null을 제외
                              .cast<RentalShopProductOption>() // 타입 캐스팅
                              .toList();
                          context.pop(rentalShopProduct?.copyWith(
                              productOptions: ListVO(selectedProductOptions)));
                        } else {
                          showToast(context, "필수 옵션을 선택해주세요");
                        }
                      },
                      text: "선택 완료",
                      textColor: state.isValid ? AppStyle.black : AppStyle.white,
                      inActiveTextColor: AppStyle.black.withOpacity(0.3),
                      buttonColor: state.isValid
                          ? AppStyle.accentColor
                          : AppStyle.inactiveBackground,
                      inActiveButtonColor: AppStyle.inactiveBackground,
                      borderRadius: 8,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
