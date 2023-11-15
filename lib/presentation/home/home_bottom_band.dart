import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';

class HomeBottomBand extends StatefulWidget {
  const HomeBottomBand({super.key});

  @override
  State createState() => HomeBottomBandState();
}

class HomeBottomBandState extends State<HomeBottomBand> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFFF44), Color(0xFFFF1F00)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: CommonDetector(
        onTap: () {
          showCommonBottomSheet(context,
              title: "장비 보관하기 번거로우시죠?",
              accentDescription: "스노우런이 도와드릴게요!",
              actionButtonDescriptionText: "데크, 바인딩, 부츠 등 어느 장비든",
              actionButtonText: "보관하러 가기");
        },
        child: Container(
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: TitleText(
                title: "장비 보관하러 가기",
                fontSize: 14,
                color: AppStyle.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
