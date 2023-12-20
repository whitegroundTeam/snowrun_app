import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/cart/cart_bloc.dart';
import 'package:snowrun_app/application/rental/actor/rental_actor_bloc.dart';
import 'package:snowrun_app/domain/rental/model/rental.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:snowrun_app/presentation/order/create_rental/accessory_equipment_rental/accessory_equipment_rental_page.dart';
import 'package:snowrun_app/presentation/order/create_rental/apparel_equipment_rental/apparel_equipment_rental_page.dart';
import 'package:snowrun_app/presentation/order/create_rental/customer_rental_info_page/customer_rental_info_page.dart';
import 'package:snowrun_app/presentation/order/create_rental/main_equipment_rental/main_equipment_rental_page.dart';
import 'package:snowrun_app/presentation/order/memo_bubble_expanded_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateRentalPage extends StatefulWidget {
  final Rental? rental;

  const CreateRentalPage({
    super.key,
    this.rental,
  });

  @override
  State createState() => CreateRentalPageState();

  static pushCreateRentalPage(BuildContext context, Rental? rental,
      {Function(Object? value)? onResult}) {
    context.push(
      '/create-rental',
      extra: {'rental': rental},
    ).then((value) => onResult?.call(value));
  }
}

class CreateRentalPageState extends State<CreateRentalPage>
    with TickerProviderStateMixin {
  static const int customerRentalInfoPage = 0;
  static const int mainEquipmentPage = 1;
  static const int apparelEquipmentPage = 2;
  static const int accessoryEquipmentPage = 3;

  final RentalActorBloc _rentalActorBloc = getIt<RentalActorBloc>();
  bool isCompletedMainEquipment = false;
  bool isCompletedApparelEquipment = false;
  bool isCompletedAccessoryEquipment = false;

  final _tabs = [
    customerRentalInfoPage,
    mainEquipmentPage,
    apparelEquipmentPage,
    accessoryEquipmentPage,
  ];

  OverlayEntry? _overlayEntry;
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isExpandedMemoOverlay = false;

  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final rental = widget.rental ?? Rental.empty();
      _rentalActorBloc.add(RentalActorEvent.init(rental: rental));
    });

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _tabController = TabController(length: _tabs.length, vsync: this);
    _pageController = PageController(keepPage: true);

    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {});
        // //TODO : 옆탭 개발용 -> 추후 지워야함
        // _pageController.animateToPage(
        //   _tabController.index,
        //   duration: const Duration(milliseconds: 300),
        //   curve: Curves.easeInOut,
        // );
        if (_tabController.index > customerRentalInfoPage &&
            !_isCustomerInfoValid()) {
          _tabController.index = customerRentalInfoPage;
          _showInvalidCustomerInfoDialog();
        } else {
          _pageController.animateToPage(
            _tabController.index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  bool _isCustomerInfoValid() {
    final rentalActorState = _rentalActorBloc.state;
    if (rentalActorState.isValidPeriod &&
        rentalActorState.isValidName &&
        rentalActorState.isValidContact &&
        rentalActorState.isValidAge &&
        rentalActorState.isValidGender &&
        rentalActorState.isValidBodySpec) {
      return true;
    }
    return false;
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
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => _rentalActorBloc,
        ),
        BlocListener<RentalActorBloc, RentalActorState>(
          bloc: _rentalActorBloc,
          listener: (context, state) {
            if (!isCompletedMainEquipment &&
                state.status == RentalActorStatus.completedMainEquipment) {
              isCompletedMainEquipment = true;
              moveNext();
            } else if (!isCompletedApparelEquipment &&
                state.status == RentalActorStatus.completedApparelEquipment) {
              isCompletedApparelEquipment = true;
              moveNext();
            } else if (!isCompletedAccessoryEquipment &&
                state.status == RentalActorStatus.completedAccessoryEquipment) {
              isCompletedAccessoryEquipment = true;
              complete();
            }
          },
        ),
      ],
      child: PopScope(
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
        child: CommonScaffold(
          //TODO : 고객앱 BUBBLE 기획확정 후 수정
          // useDraggableBubble: true,
          // onTapBubble: (offSet) {
          //   WidgetsBinding.instance.addPostFrameCallback((_) {
          //     showFABOverlay(offSet);
          //   });
          // },
          body: BlocBuilder<RentalActorBloc, RentalActorState>(
            bloc: _rentalActorBloc,
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    child: CustomScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        slivers: [
                          CommonAppBar(
                            isSliver: true,
                            appBarType: AppBarType.close,
                            title: "렌탈 상품 추가",
                            onClickCloseButton: () {
                              _finishPage();
                            },
                          ),
                          DefaultTabController(
                            length: _tabs.length,
                            initialIndex: customerRentalInfoPage,
                            child: SliverFillRemaining(
                              hasScrollBody: true,
                              child: BlocProvider(
                                create: (context) => _rentalActorBloc,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    TabBar(
                                      controller: _tabController,
                                      tabAlignment: TabAlignment.start,
                                      onTap: (index) {
                                        //TODO : 옆탭 개발용 -> 추후 지워야함
                                        // _pageController.animateToPage(
                                        //   index,
                                        //   duration:
                                        //       const Duration(milliseconds: 300),
                                        //   curve: Curves.easeInOut,
                                        // );

                                        if (_tabController.index >
                                                customerRentalInfoPage &&
                                            !_isCustomerInfoValid()) {
                                          _tabController.index =
                                              customerRentalInfoPage;
                                          _showInvalidCustomerInfoDialog();
                                        } else {
                                          _pageController.animateToPage(
                                            index,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            curve: Curves.easeInOut,
                                          );
                                        }
                                      },
                                      isScrollable: true,
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      indicatorPadding:
                                          const EdgeInsets.symmetric(
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
                                      tabs: _tabs.map(
                                        (tab) {
                                          String tabName = "";
                                          switch (tab) {
                                            case customerRentalInfoPage:
                                              tabName = "필수정보";
                                              break;
                                            case mainEquipmentPage:
                                              tabName = "장비";
                                              break;
                                            case apparelEquipmentPage:
                                              tabName = "의류";
                                              break;
                                            case accessoryEquipmentPage:
                                              tabName = "부가장비";
                                              break;
                                          }

                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8,
                                            ),
                                            child: Tab(text: tabName),
                                          );
                                        },
                                      ).toList(),
                                    ),
                                    Expanded(
                                      child: PageView(
                                        controller: _pageController,
                                        onPageChanged: (index) {
                                          //TODO : 옆탭 개발용 -> 추후 지워야함
                                          _tabController.animateTo(index);
                                          // if (index > customerRentalInfoPage &&
                                          //     !_isCustomerInfoValid()) {
                                          //   _pageController.animateToPage(
                                          //       customerRentalInfoPage,
                                          //       duration: const Duration(
                                          //           milliseconds: 300),
                                          //       curve: Curves.easeInOut);
                                          //   _showInvalidCustomerInfoDialog();
                                          // } else {
                                          //   _tabController.animateTo(index);
                                          // }
                                        },
                                        children: _tabs.map((category) {
                                          if (category ==
                                              customerRentalInfoPage) {
                                            return CustomerRentalInfoPage(
                                              representativePhoneNumber: "",
                                              representativeEmail: "",
                                            );
                                          } else if (category ==
                                              mainEquipmentPage) {
                                            return const MainEquipmentRentalPage();
                                          } else if (category ==
                                              apparelEquipmentPage) {
                                            return const ApparelEquipmentRentalPage();
                                          } else {
                                            return const AccessoryEquipmentRentalPage();
                                          }
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Row(
                      children: [
                        Visibility(
                          visible:
                              _tabController.index > customerRentalInfoPage,
                          child: Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 12,
                              ),
                              child: CommonButton(
                                onTap: () {
                                  movePrevious();
                                },
                                text: "이전",
                                textColor: AppStyle.white,
                                inActiveTextColor:
                                    AppStyle.black.withOpacity(0.3),
                                buttonColor: AppStyle.inactiveBackground,
                                inActiveButtonColor:
                                    AppStyle.inactiveBackground,
                                borderRadius: 8,
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                          visible:
                              _tabController.index < accessoryEquipmentPage,
                          child: Expanded(
                            flex: 2,
                            child: CommonButton(
                              onTap: () {
                                moveNext();
                              },
                              text: "다음",
                              // selectButtonBloc: orderButtonBloc,
                              textColor: _isValidNextButton()
                                  ? AppStyle.black
                                  : AppStyle.white,
                              inActiveTextColor:
                                  AppStyle.black.withOpacity(0.3),
                              buttonColor: _isValidNextButton()
                                  ? AppStyle.accentColor
                                  : AppStyle.inactiveBackground,
                              inActiveButtonColor: AppStyle.inactiveBackground,
                              borderRadius: 8,
                            ),
                          ),
                        ),
                        Visibility(
                          visible:
                              _tabController.index >= accessoryEquipmentPage,
                          child: Expanded(
                            flex: 2,
                            child: CommonButton(
                              onTap: () {
                                complete();
                              },
                              text: "완료",
                              // selectButtonBloc: orderButtonBloc,
                              textColor: _isValidNextButton()
                                  ? AppStyle.black
                                  : AppStyle.white,
                              inActiveTextColor:
                                  AppStyle.black.withOpacity(0.3),
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
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  movePrevious() {
    FocusScope.of(context).unfocus();
    if (_tabController.index > customerRentalInfoPage) {
      _tabController.index = _tabController.index - 1;
    }
  }

  moveNext() {
    FocusScope.of(context).unfocus();
    if (_tabController.index < accessoryEquipmentPage) {
      _pageController.animateToPage(
        _tabController.index + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  complete() {
    FocusScope.of(context).unfocus();
    if (_rentalActorBloc.state.isValidRentalInfo) {
      context.pop(_rentalActorBloc.state.rental);
    }
  }

  bool _isValidNextButton() {
    if (_tabController.index == customerRentalInfoPage) {
      return _rentalActorBloc.state.isValidRentalInfo;
    } else if (_tabController.index == mainEquipmentPage) {
      return true;
    } else if (_tabController.index == apparelEquipmentPage) {
      return true;
    } else if (_tabController.index == accessoryEquipmentPage) {
      return true;
    }
    return false;
  }

  _showInvalidCustomerInfoDialog() async {
    await showCommonDialog(
      context,
      buttonText: "확인",
      title: "필수정보를 입력해주세요",
      description: "장비, 의류, 부가장비를 선택하기 위해서 필수정보를 입력해주세요!",
      onPressedButton: () async {
        context.pop();
      },
    );
  }

  _finishPage() async {
    await showCommonDialog(context,
        buttonText: "네",
        title: "렌탈 아이템 추가를 그만하시겠어요?",
        description: "이전 화면으로 이동하여 추가 주문이 가능해요😄",
        negativeButtonText: "아니요", onPressedButton: () async {
      context.pop();
      context.pop();
    }, onPressedNegativeButton: () {
      context.pop();
    });
  }
}
