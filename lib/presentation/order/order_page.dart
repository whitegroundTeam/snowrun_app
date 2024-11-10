import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/cart/cart_bloc.dart';
import 'package:doortoout/application/core/select_button/select_button_bloc.dart';
import 'package:doortoout/application/order/order_bloc.dart';
import 'package:doortoout/application/rental_shop/rental_shop_bloc.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/core/appbar/common_app_bar.dart';
import 'package:doortoout/presentation/core/common_button.dart';
import 'package:doortoout/presentation/core/common_dialog.dart';
import 'package:doortoout/presentation/core/common_scaffold.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/presentation/home/home_page.dart';
import 'package:doortoout/presentation/order/lesson_pass_order/lesson_pass_order_page.dart';
import 'package:doortoout/presentation/order/memo_bubble_expanded_page.dart';
import 'package:doortoout/presentation/order/order_check/order_check_page.dart';
import 'package:doortoout/presentation/order/recommanded_products/recommanded_products_page.dart';
import 'package:doortoout/presentation/order/rental/rental_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({
    super.key,
  });

  @override
  State createState() => OrderPageState();

  static pushOrderPage(BuildContext context,
      {Function(Object? value)? onResult}) {
    context
        .push(
          '/order',
        )
        .then((value) => onResult?.call(value));
  }
}

class OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  static const int rentalPage = 0;
  static const int recommandedProductsPage = 1;
  static const int lessonTicketPage = 2;

  final _tabs = [
    rentalPage,
    recommandedProductsPage,
    lessonTicketPage,
  ];

  final orderButtonBloc = getIt<SelectButtonBloc>();
  final _orderBloc = getIt<OrderBloc>();

  late TabController _tabController;
  late PageController _pageController;

  OverlayEntry? _overlayEntry;
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isExpandedMemoOverlay = false;

  static const colorizeColors = [
    AppStyle.accentColor,
    AppStyle.accentOrange,
    AppStyle.accentGreen,
  ];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    final rentalShop = context.read<RentalShopBloc>().state.rentalShop;
    if (rentalShop.activityCenters.getOrCrash().length == 1) {
      context.read<CartBloc>().add(CartEvent.selectActivityCenter(
          activityCenter: rentalShop.activityCenters.getOrCrash().first));
    } else if (rentalShop.activityCenters.getOrCrash().isEmpty == true) {
      //TODO : ActivityCenter Empty 처리 -> 이거 운영상 무조건 막아야할듯?
    }

    _tabController = TabController(length: _tabs.length, vsync: this);
    _pageController = PageController(keepPage: true);

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {});
        _pageController.animateToPage(
          _tabController.index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
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
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.read<CartBloc>();

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
        await _finishPage();
        return;
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => _orderBloc,
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
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: CustomScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    slivers: [
                      CommonAppBar(
                        isSliver: true,
                        appBarType: AppBarType.close,
                        title: "주문하기",
                        onClickCloseButton: () {
                          _finishPage();
                        },
                      ),
                      DefaultTabController(
                        length: _tabs.length,
                        initialIndex: rentalPage,
                        child: SliverFillRemaining(
                          hasScrollBody: true,
                          child: Column(
                            children: [
                              TabBar(
                                controller: _tabController,
                                tabAlignment: TabAlignment.start,
                                onTap: (index) {
                                  _pageController.animateToPage(
                                    index,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                isScrollable: true,
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicatorPadding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 8,
                                ),
                                // indicator: const BoxDecoration(
                                //   color: AppStyle.accentColor,
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(12.0),
                                //   ),
                                // ),
                                labelColor: AppStyle.accentColor,
                                labelStyle: AppTextStyle.body02.copyWith(
                                  color: AppStyle.accentColor,
                                ),
                                unselectedLabelColor: AppStyle.white,
                                unselectedLabelStyle:
                                    AppTextStyle.body01.copyWith(
                                  color: AppStyle.white,
                                ),
                                tabs: _tabs
                                    .map(
                                      (tab) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                        ),
                                        child: Tab(
                                            text: tab == rentalPage
                                                ? "렌탈"
                                                : tab == recommandedProductsPage
                                                    ? "추천 상품"
                                                    : "강습권"),
                                      ),
                                    )
                                    .toList(),
                              ),
                              Expanded(
                                child: PageView(
                                  controller: _pageController,
                                  onPageChanged: (index) {
                                    _tabController.animateTo(index);
                                  },
                                  children: _tabs.map((category) {
                                    if (category == rentalPage) {
                                      return const RentalListPage();
                                    } else if (category ==
                                        recommandedProductsPage) {
                                      return const RecommandedProductsPage();
                                    } else {
                                      return const LessonPassOrderPage();
                                    }
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 16,
                  ),
                  child: Row(
                    children: [
                      Visibility(
                        visible: _tabController.index > rentalPage,
                        child: Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 12,
                            ),
                            child: CommonButton(
                              onTap: () {
                                if (_tabController.index > rentalPage) {
                                  _tabController.index =
                                      _tabController.index - 1;
                                }
                              },
                              text: "이전",
                              textColor: AppStyle.white,
                              inActiveTextColor:
                                  AppStyle.black.withOpacity(0.3),
                              buttonColor: AppStyle.inactiveBackground,
                              inActiveButtonColor: AppStyle.inactiveBackground,
                              borderRadius: 8,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _tabController.index < lessonTicketPage,
                        child: Expanded(
                          flex: 2,
                          child: CommonButton(
                            onTap: () {
                              if (_tabController.index < lessonTicketPage) {
                                _pageController.animateToPage(
                                  _tabController.index + 1,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            text: "다음",
                            // selectButtonBloc: orderButtonBloc,
                            textColor: _isValidNextButton()
                                ? AppStyle.black
                                : AppStyle.white,
                            inActiveTextColor: AppStyle.black.withOpacity(0.3),
                            buttonColor: _isValidNextButton()
                                ? AppStyle.accentColor
                                : AppStyle.inactiveBackground,
                            inActiveButtonColor: AppStyle.inactiveBackground,
                            borderRadius: 8,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _tabController.index >= lessonTicketPage,
                        child: Expanded(
                          flex: 2,
                          child: CommonButton(
                            onTap: () {
                              OrderCheckPage.pushOrderCheckPage(context);
                            },
                            text: "주문하기",
                            // selectButtonBloc: orderButtonBloc,
                            textColor: _isValidNextButton()
                                ? AppStyle.black
                                : AppStyle.white,
                            inActiveTextColor: AppStyle.black.withOpacity(0.3),
                            buttonColor: _isValidNextButton()
                                ? AppStyle.accentColor
                                : AppStyle.inactiveBackground,
                            inActiveButtonColor: AppStyle.inactiveBackground,
                            borderRadius: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isValidNextButton() {
    if (_tabController.index == rentalPage) {
      return true;
    } else if (_tabController.index == recommandedProductsPage) {
      return true;
    } else if (_tabController.index == lessonTicketPage) {
      return true;
    } else {
      return false;
    }
  }

  _finishPage() async {
    await showCommonDialog(context,
        buttonText: "홈으로",
        title: "주문을 그만하시겠어요?",
        description: "홈으로 나가도 이어서 주문이 가능합니다😄",
        negativeButtonText: "아니요", onPressedButton: () async {
      HomePage.goHomePage(context);
    }, onPressedNegativeButton: () {
      context.pop();
    });
  }
}
