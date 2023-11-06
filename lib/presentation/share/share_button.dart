import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({super.key});

  @override
  State createState() => ShareButtonState();
}

class ShareButtonState extends State<ShareButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppStyle.secondaryBackground.withOpacity(0.95),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4),
          bottomLeft: Radius.circular(4),
        ),
      ),
      child: CommonDetector(
        onTap: () {
          showToast("공유 링크가 복사되었습니다 😆");
        },
        child: const Padding(
          padding: EdgeInsets.only(
            left: 12,
            right: 30,
            top: 8,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                title: "공유하고",
                fontSize: 16,
                color: AppStyle.white,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 4,
              ),
              TitleText(
                title: "함께타기!",
                fontSize: 16,
                color: AppStyle.accentColor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
