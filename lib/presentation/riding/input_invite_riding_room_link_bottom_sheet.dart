import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/appbar/underline_text.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/utils.dart';

class InputInviteRidingRoomLinkBottomSheet extends StatefulWidget {
  const InputInviteRidingRoomLinkBottomSheet({
    super.key,
  });

  @override
  InputInviteRidingRoomLinkBottomSheetState createState() =>
      InputInviteRidingRoomLinkBottomSheetState();
}

class InputInviteRidingRoomLinkBottomSheetState
    extends State<InputInviteRidingRoomLinkBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  static const double radiusWidth = 2.0;

  final PageController pageController = PageController(
    initialPage: 0,
  );
  int currentPosition = 0;
  TextEditingController linkTextController = TextEditingController();

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
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 16),
                          child: TitleText(
                            title: "라이딩 방에 입장하기",
                            fontSize: 20,
                            color: AppStyle.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
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
                      horizontal: 20,
                    ),
                    child: TitleText(
                      title: "공유 받은 라이딩 방의 초대 링크가 필요해요!",
                      fontSize: 14,
                      color: AppStyle.accentColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        CommonDetector(
                          onTap: () async {
                            final text = await getClipboardText();
                            linkTextController.text = text.trim();
                          },
                          child: const UnderlineText(
                            TitleText(
                              title: "붙여넣기",
                              fontSize: 20,
                              color: AppStyle.secondaryTextColor,
                              fontWeight: FontWeight.w700,
                            ),
                            AppStyle.secondaryTextColor,
                            width: 2,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const TitleText(
                          title: "혹은",
                          fontSize: 16,
                          color: AppStyle.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      controller: linkTextController,
                      keyboardType: TextInputType.url,
                      cursorColor: AppStyle.white,
                      decoration: InputDecoration(
                        fillColor: AppStyle.background,
                        filled: true,
                        hintText: '초대 링크 입력하기',
                        hintStyle: const TextStyle(
                          color: AppStyle.secondaryTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: AppStyle.secondaryBackground, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppStyle.white, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      style: const TextStyle(
                        color: AppStyle.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                      autocorrect: false,
                      autofocus: false,
                      onChanged: (value) {
                        return;
                      },
                      validator: (_) {
                        return '양식을 지켜주세요!';
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
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
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
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
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: const Center(
                            child: TitleText(
                              title: "시작하기",
                              fontSize: 18,
                              color: AppStyle.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
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

void showInputInviteRidingRoomLinkBottomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return const InputInviteRidingRoomLinkBottomSheet();
    },
    elevation: 50,

    // /// 바텀시트 드래그 가능 여부
    // enableDrag: false,
    //
    // /// 바텀시트가 아닌 부분을 클릭했을 때
    // /// 바텀시트를 닫을지 말지 설정
    // isDismissible: true,

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
