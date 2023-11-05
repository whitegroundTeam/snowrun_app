import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';

class HomeEquipmentStorageBottomSheet extends StatefulWidget {
  const HomeEquipmentStorageBottomSheet({
    super.key,
  });

  @override
  HomeEquipmentStorageBottomSheetState createState() =>
      HomeEquipmentStorageBottomSheetState();
}

class HomeEquipmentStorageBottomSheetState
    extends State<HomeEquipmentStorageBottomSheet>
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
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppStyle.secondaryBackground,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
            border: Border.all(color: AppStyle.accentColor, width: radiusWidth),
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
                  const Padding(
                    padding: EdgeInsets.only(left: 24, right: 16),
                    child: TitleText(
                      title: "장비 보관하기 번거로우시죠?",
                      fontSize: 24,
                      color: AppStyle.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  CommonDetector(
                    onTap: () {
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
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: TitleText(
                  title: "스노우런이 도와드릴게요!",
                  fontSize: 20,
                  color: AppStyle.accentColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, right: 24),
                child: TitleText(
                  title: "데크, 바인딩, 부츠 등 어느 장비든",
                  fontSize: 16,
                  color: AppStyle.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              BounceInLeft(
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
                  margin: const EdgeInsets.only(
                    right: 24,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  width: MediaQuery.sizeOf(context).width,
                  child: CommonDetector(
                    onTap: () {
                      //TODO : 보관하러가기 스모어 링크
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const TitleText(
                          title: "보관하러 가기",
                          fontSize: 20,
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
              const SizedBox(
                height: 24,
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
            height: 20,
            color: AppStyle.secondaryBackground,
          ),
        ),
      ],
    );
  }
}

void showEquipmentStorageBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return const HomeEquipmentStorageBottomSheet();
    },
    elevation: 50,

    /// 바텀시트 드래그 가능 여부
    enableDrag: false,

    /// 바텀시트가 아닌 부분을 클릭했을 때
    /// 바텀시트를 닫을지 말지 설정
    isDismissible: true,

    /// 바텀시트 아닌 영역의 컬러
    barrierColor: AppStyle.background.withOpacity(0.85),

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
