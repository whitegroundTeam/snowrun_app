import 'package:flutter/widgets.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/webview/common_webview.dart';

class HomeBottomBand extends StatefulWidget {
  const HomeBottomBand({super.key});

  @override
  State createState() => HomeBottomBandState();
}

class HomeBottomBandState extends State<HomeBottomBand> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFFB74D),
            Color(0xFFF57C00),
            Color(0xFFEF6C00),
          ],
        ),
      ),
      child: CommonDetector(
        onTap: () {
          showCommonBottomSheet(context,
              title: "장비 보관하기 번거로우시죠?",
              accentDescription: "스노우런이 도와드릴게요!",
              actionButtonDescriptionText: "데크, 바인딩, 부츠 등 어느 장비든",
              actionButtonText: "보관하러 가기",
              onClickActionButton: () {
                CommonWebViewPage.pushCommonWebView(
                    context, "https://smore.im/form/VhD3HQMVVy", "장비 보관 신청서");

              });
        },
        child: const Center(
          child: TitleText(
            title: "장비 보관하러 가기",
            fontSize: 14,
            color: AppStyle.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
