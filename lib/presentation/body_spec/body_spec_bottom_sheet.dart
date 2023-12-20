import 'package:snowrun_app/application/body_spec/body_spec_bloc.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/application/rental_shop/rental_shop_bloc.dart';
import 'package:snowrun_app/domain/body_spec/model/body_spec.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/body_spec/body_spec_foot_size_tab.dart';
import 'package:snowrun_app/presentation/body_spec/body_spec_height_tab.dart';
import 'package:snowrun_app/presentation/body_spec/body_spec_weight_tab.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

enum BodySpecType { height, weight, footSize }

class BodySpecBottomSheet extends StatefulWidget {
  final BodySpecType? bodySpecType;
  final Function(BodySpec bodySpec)? onCompleted;
  final bool? canClose;
  final bool? isChild;
  final bool? isMale;
  final Function? onClickCloseButton;
  final BodySpec? bodySpec;

  const BodySpecBottomSheet(
      {super.key,
      this.bodySpecType,
      this.onCompleted,
      this.canClose,
      this.bodySpec,
      this.isChild = false,
      this.isMale = false,
      this.onClickCloseButton});

  @override
  BodySpecBottomSheetState createState() => BodySpecBottomSheetState();
}

class BodySpecBottomSheetState extends State<BodySpecBottomSheet>
    with TickerProviderStateMixin {
  static const int heightTab = 0;
  static const int weightTab = 1;
  static const int footSizeTab = 2;
  static const double radiusWidth = 1.0;

  final bodySpecBloc = getIt<BodySpecBloc>();

  late AnimationController _controller;
  late Animation<double> _animation;

  late TabController _tabController;
  late PageController _pageController;

  final _tabs = [
    heightTab,
    weightTab,
    footSizeTab,
  ];

  int currentPosition = 0;

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

    int a = 0;
    //TODO : bodySpec에 따라서 index 조절

    int initIndex = widget.bodySpecType == BodySpecType.height
        ? heightTab
        : widget.bodySpecType == BodySpecType.weight
            ? weightTab
            : footSizeTab;

    _tabController = TabController(
        length: _tabs.length, vsync: this, initialIndex: initIndex);
    _pageController = PageController(keepPage: true, initialPage: initIndex);

    _tabController.addListener(() {
      setState(() {});
      if (!_tabController.indexIsChanging) {
        _pageController.animateToPage(
          _tabController.index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bodySpecBloc
        ..add(
          BodySpecEvent.init(
              bodySpec: widget.bodySpec ?? BodySpec.empty(),
              rentalShop: context.read<RentalShopBloc>().state.rentalShop,
              isChild: widget.isChild ?? false,
              isMale: widget.isMale ?? false),
        ),
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          decoration: const BoxDecoration(
            color: AppStyle.backgroundBlack,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 12,
              ),
              Align(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppStyle.inactiveBackground,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  width: 96,
                  height: 2,
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  Visibility(
                    visible: widget.canClose == true,
                    child: CommonDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, top: 16, bottom: 12, right: 16),
                        child: Image.asset(
                          'assets/webp/close.webp',
                          height: 24,
                          width: 24,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: DefaultTabController(
                  length: _tabs.length,
                  initialIndex: widget.bodySpecType == BodySpecType.height
                      ? heightTab
                      : widget.bodySpecType == BodySpecType.weight
                          ? weightTab
                          : footSizeTab,
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        onTap: (index) {
                          _pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        isScrollable: false,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 12,
                        ),
                        indicator: const BoxDecoration(
                          color: AppStyle.accentColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        labelColor: AppStyle.black,
                        labelStyle: AppTextStyle.body02.copyWith(
                          color: AppStyle.accentColor,
                        ),
                        unselectedLabelColor: AppStyle.white,
                        unselectedLabelStyle: AppTextStyle.body01.copyWith(
                          color: AppStyle.white,
                        ),
                        tabs: _tabs.map(
                          (tab) {
                            String tabName = "";
                            switch (tab) {
                              case heightTab:
                                tabName = "키";
                                break;
                              case weightTab:
                                tabName = "체중";
                                break;
                              case footSizeTab:
                                tabName = "발 사이즈";
                                break;
                            }

                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4,
                              ),
                              child: Tab(text: tabName),
                            );
                          },
                        ).toList(),
                      ),
                      Expanded(
                        child: BlocBuilder<BodySpecBloc, BodySpecState>(
                          builder: (context, state) {
                            return state.status == DefaultStatus.initial
                                ? const SizedBox()
                                : PageView(
                                    controller: _pageController,
                                    onPageChanged: (index) {
                                      _tabController.animateTo(index);
                                    },
                                    children: _tabs.map((category) {
                                      if (category == heightTab) {
                                        return const BodySpecHeightTab();
                                      } else if (category == weightTab) {
                                        return const BodySpecWeightTab();
                                      } else {
                                        return const BodySpecFootSizeTab();
                                      }
                                    }).toList(),
                                  );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: BlocBuilder<BodySpecBloc, BodySpecState>(
                          bloc: bodySpecBloc,
                          builder: (context, state) {
                            final isValid = state.bodySpec.height != null &&
                                state.bodySpec.weight != null &&
                                state.bodySpec.footSize != null;

                            return Container(
                              padding: const EdgeInsets.only(
                                // left: 16,
                                // right: 16,
                                bottom: 16,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 12,
                                      ),
                                      child: CommonButton(
                                        onTap: () {
                                          if(_tabController.index == heightTab) {
                                            context.pop();
                                          } else {
                                            _tabController.index =
                                                _tabController.index - 1;
                                          }
                                        },
                                        text:
                                            _tabController.index == heightTab
                                                ? "닫기"
                                                : "이전",
                                        textColor: AppStyle.white,
                                        inActiveTextColor:
                                            AppStyle.black.withOpacity(0.3),
                                        buttonColor:
                                            AppStyle.inactiveBackground,
                                        inActiveButtonColor:
                                            AppStyle.inactiveBackground,
                                        borderRadius: 8,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: _tabController.index < footSizeTab,
                                    child: Expanded(
                                      flex: 2,
                                      child: CommonButton(
                                        onTap: () {
                                          if (_tabController.index <
                                              footSizeTab) {
                                            _tabController.index =
                                                _tabController.index + 1;
                                          }
                                        },
                                        text: "다음",
                                        // selectButtonBloc: orderButtonBloc,
                                        textColor: AppStyle.black,
                                        inActiveTextColor:
                                            AppStyle.black.withOpacity(0.3),
                                        buttonColor: AppStyle.accentColor,
                                        inActiveButtonColor:
                                            AppStyle.inactiveBackground,
                                        borderRadius: 8,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible:
                                        _tabController.index >= footSizeTab,
                                    child: Expanded(
                                      flex: 2,
                                      child: CommonButton(
                                        onTap: () {
                                          if (isValid) {
                                            widget.onCompleted?.call(
                                                bodySpecBloc.state.bodySpec);
                                            context.pop();
                                          } else {
                                            showToast(context,
                                                "키, 체중, 발 사이즈 모두 입력해주세요😄");
                                          }
                                        },
                                        text: "선택완료",
                                        // selectButtonBloc: orderButtonBloc,
                                        textColor: isValid
                                            ? AppStyle.black
                                            : AppStyle.white,
                                        inActiveTextColor:
                                            AppStyle.black.withOpacity(0.3),
                                        buttonColor: isValid
                                            ? AppStyle.accentColor
                                            : AppStyle.inactiveBackground,
                                        inActiveButtonColor:
                                            AppStyle.inactiveBackground,
                                        borderRadius: 8,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showBodySpecBottomSheet(
  BuildContext context, {
  BodySpecType? bodySpecType,
  BodySpec? bodySpec,
  Function(BodySpec)? onCompleted,
  bool? canClose = true,
  bool? isChild = false,
  bool? isMale = false,
  Function? onClickCloseButton,
}) {
  final canCloseBottomSheet = canClose == null || canClose;

  showModalBottomSheet(
    context: context,
    builder: (context) {
      return BodySpecBottomSheet(
        bodySpec: bodySpec,
        bodySpecType: bodySpecType,
        onCompleted: onCompleted,
        canClose: canClose,
        isChild: isChild,
        isMale: isMale,
        onClickCloseButton: onClickCloseButton,
      );
    },
    elevation: 1,

    // /// 바텀시트 드래그 가능 여부
    enableDrag: canCloseBottomSheet,
    // /// 바텀시트가 아닌 부분을 클릭했을 때
    // /// 바텀시트를 닫을지 말지 설정
    isDismissible: canCloseBottomSheet,

    /// 바텀시트 아닌 영역의 컬러
    barrierColor: AppStyle.white.withOpacity(0.25),

    /// 바텀시트 배경 컬러
    backgroundColor: AppStyle.transparent,

    /// 사이즈 조절
    // constraints: BoxConstraints(
    //   maxHeight: MediaQuery.sizeOf(context).height * 0.65,
    // ),

    /// false = 화면의 절반만 차지함
    /// true = 전체 화면 차이
    isScrollControlled: true,

    /// SafeArea 사용할지 말지 설정
    /// isScrollControlled을 true로 설정하면 상태바까지 올라감
    /// 이때 useSafeArea를 true로 설정하면 상태바는 사용 불가
    useSafeArea: true,

    /// timeout 기능 -> 입력한 Duration 이후 onTimeout 함수 호출됨
  )

      /// 7초 후  호출
      .timeout(const Duration(seconds: 10), onTimeout: () {
        // context.pop();
      })

      /// then -> 바텀시트 닫은 경우 호출됨
      .then((value) {})

      /// whenComplete -> then 다음에 호출됨
      .whenComplete(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
}
