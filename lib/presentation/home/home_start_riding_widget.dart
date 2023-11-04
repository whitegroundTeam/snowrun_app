import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';

class HomeStartRidingWidget extends StatefulWidget {
  const HomeStartRidingWidget({super.key});

  @override
  State createState() => HomeStartRidingWidgetState();
}

class HomeStartRidingWidgetState extends State<HomeStartRidingWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CommonDetector(
        needAuth: true,
        onTap: () {

        },
        child: Container(
          decoration: BoxDecoration(
            color: AppStyle.secondaryBackground,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 36,
          ),
          padding: const EdgeInsets.only(
            left: 12,
            right: 4,
            top: 16,
            bottom: 16,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/webp/snowrun_gradation.webp',
                width: 48,
                height: 48,
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                      title: "스키장에 도착하셨나요?",
                      fontSize: 18,
                      color: AppStyle.white,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TitleText(
                      title: "새로운 라이딩 시작하기",
                      fontSize: 18,
                      color: AppStyle.accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/webp/arrow_right.webp',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 4,),
            ],
          ),
        ),
      ),
    );
  }
}
