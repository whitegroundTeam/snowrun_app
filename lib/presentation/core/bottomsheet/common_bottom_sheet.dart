import 'dart:ffi';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/appbar/underline_text.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/formatters.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/utils.dart';

class CommonBottomSheet extends StatefulWidget {
  final String title;
  final String? accentDescription;
  final String? description;
  final String? imageUrl;
  final String? negativeButtonText;
  final String? positiveButtonText;
  final Function? onClickNegativeButton;
  final Function? onClickPositiveButton;
  final Function? onClickCloseButton;
  final String? actionButtonDescriptionText;
  final String? actionButtonText;
  final Function? onClickActionButton;
  final bool? canClose;

  const CommonBottomSheet(
      {super.key,
      required this.title,
      this.accentDescription,
      this.description,
      this.imageUrl,
      this.negativeButtonText,
      this.positiveButtonText,
      this.onClickNegativeButton,
      this.onClickPositiveButton,
      this.onClickCloseButton,
      this.actionButtonDescriptionText,
      this.actionButtonText,
      this.onClickActionButton,
      this.canClose});

  @override
  CommonBottomSheetState createState() => CommonBottomSheetState();
}

class CommonBottomSheetState extends State<CommonBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  static const double radiusWidth = 2.0;

  final PageController pageController = PageController(
    initialPage: 0,
  );
  int currentPosition = 0;

  @override
  void initState() {
    animationController = BottomSheet.createAnimationController(this);
    animationController
      ..addListener(() {})
      ..duration = const Duration(milliseconds: 500)
      ..reverseDuration = const Duration(milliseconds: 500);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppStyle.secondaryBackground,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                ),
                border:
                    Border.all(color: AppStyle.accentColor, width: radiusWidth),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 16),
                          child: TitleText(
                            title: widget.title ?? "",
                            fontSize: 20,
                            color: AppStyle.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: widget.canClose == true,
                        child: CommonDetector(
                          onTap: () {
                            widget.onClickCloseButton?.call();
                            context.pop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(
                              'assets/webp/close.webp',
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: widget.accentDescription?.isNotEmpty == true,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 8,
                      ),
                      child: TitleText(
                        title: widget.accentDescription ?? "",
                        fontSize: 14,
                        color: AppStyle.accentColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.description?.isNotEmpty == true,
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      margin: EdgeInsets.only(
                        top: widget.accentDescription?.isNotEmpty == true
                            ? 4
                            : 8,
                      ),
                      child: TitleText(
                        title: widget.description ?? "",
                        fontSize: 14,
                        color: AppStyle.secondaryTextColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.imageUrl?.isNotEmpty == true,
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                        top: 16,
                      ),
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).width,
                      child: Center(
                        child: CommonNetworkImage(
                          imageUrl: widget.imageUrl ?? "",
                          boxFit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 32,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: widget.negativeButtonText?.isNotEmpty == true
                              ? CommonDetector(
                                  onTap: () {
                                    widget.onClickNegativeButton?.call();
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    margin: const EdgeInsets.only(
                                      left: 12,
                                      right: 24,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    child: Center(
                                      child: TitleText(
                                        title: widget.negativeButtonText ?? "",
                                        fontSize: 18,
                                        color: AppStyle.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ),
                        Expanded(
                          child: widget.positiveButtonText?.isNotEmpty == true
                              ? CommonDetector(
                                  onTap: () {
                                    widget.onClickPositiveButton?.call();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color(0xFFFFB74D), // 밝은 색상
                                          Color(0xFFF57C00), // 중간 색상
                                          Color(0xFFEF6C00), // 더 진한 색상
                                        ],
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 15,
                                          offset: const Offset(0, 7),
                                        ),
                                      ],
                                    ),
                                    margin: const EdgeInsets.only(
                                      left: 12,
                                      right: 24,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    child: Center(
                                      child: TitleText(
                                        title: widget.positiveButtonText ?? "",
                                        fontSize: 18,
                                        color: AppStyle.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible:
                        widget.actionButtonDescriptionText?.isNotEmpty == true,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 24,
                        bottom: 4,
                        top: 28,
                      ),
                      child: TitleText(
                        title: widget.actionButtonDescriptionText ?? "",
                        fontSize: 16,
                        color: AppStyle.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.actionButtonText?.isNotEmpty == true,
                    child: BounceInLeft(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFFFFB74D), // 밝은 색상
                              Color(0xFFF57C00), // 중간 색상
                              Color(0xFFEF6C00), // 더 진한 색상
                            ],
                          ),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 15,
                              offset: const Offset(0, 7),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(
                          right: 24,
                          bottom: 12,
                          top: widget.actionButtonDescriptionText?.isNotEmpty ==
                                  true
                              ? 0
                              : 28,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        width: MediaQuery.sizeOf(context).width,
                        child: CommonDetector(
                          onTap: () {
                            widget.onClickActionButton?.call();
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
                              TitleText(
                                title: widget.actionButtonText ?? "",
                                fontSize: 18,
                                color: AppStyle.white,
                                fontWeight: FontWeight.bold,
                              ),
                              Image.asset(
                                'assets/webp/arrow_right.webp',
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: radiusWidth,
                ),
                height: 16,
                color: AppStyle.secondaryBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showCommonBottomSheet(
  BuildContext context, {
  required String title,
  String? accentDescription,
  String? description,
  String? imageUrl,
  String? negativeButtonText,
  String? positiveButtonText,
  Function? onClickNegativeButton,
  Function? onClickPositiveButton,
  Function? onClickCloseButton,
  String? actionButtonDescriptionText,
  String? actionButtonText,
  Function? onClickActionButton,
  bool? canClose = true,
}) {
  final canCloseBottomSheet = canClose == null || canClose;

  showModalBottomSheet(
    context: context,
    builder: (context) {
      return CommonBottomSheet(
        title: title,
        accentDescription: accentDescription,
        description: description,
        imageUrl: imageUrl,
        negativeButtonText: negativeButtonText,
        positiveButtonText: positiveButtonText,
        onClickNegativeButton: onClickNegativeButton,
        onClickPositiveButton: onClickPositiveButton,
        onClickCloseButton: onClickCloseButton,
        actionButtonDescriptionText: actionButtonDescriptionText,
        actionButtonText: actionButtonText,
        onClickActionButton: onClickActionButton,
        canClose: canCloseBottomSheet,
      );
    },
    elevation: 50,

    // /// 바텀시트 드래그 가능 여부
    enableDrag: canCloseBottomSheet,
    // /// 바텀시트가 아닌 부분을 클릭했을 때
    // /// 바텀시트를 닫을지 말지 설정
    isDismissible: canCloseBottomSheet,

    /// 바텀시트 아닌 영역의 컬러
    barrierColor: AppStyle.background.withOpacity(0.7),

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
    // useSafeArea: true,
    // transitionAnimationController: animationController

    /// timeout 기능 -> 입력한 Duration 이후 onTimeout 함수 호출됨
  )

      /// 7초 후  호출
      .timeout(const Duration(seconds: 10), onTimeout: () {
        // context.pop();
      })

      /// then -> 바텀시트 닫은 경우 호출됨
      .then((value) {})

      /// whenComplete -> then 다음에 호출됨
      .whenComplete(() {});
}
