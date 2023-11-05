import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';

class SettingActionWidget extends StatefulWidget {
  final String title;
  final String? value;
  final bool? needAuth;
  final bool? isVisibleArrow;
  final Widget? bottomExpandWidget;
  final void Function()? onTap;

  const SettingActionWidget(
      {super.key,
      required this.title,
      this.value,
      this.needAuth,
      this.isVisibleArrow,
      this.bottomExpandWidget,
      this.onTap});

  @override
  State createState() => SettingActionWidgetState();
}

class SettingActionWidgetState extends State<SettingActionWidget> {
  @override
  Widget build(BuildContext context) {
    final isShowArrow =
        widget.isVisibleArrow == null || widget.isVisibleArrow == true;
    return CommonDetector(
      needAuth: true,
      onTap: () {
        widget.onTap?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppStyle.secondaryBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.only(
          left: 16,
          right: 12,
          top: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TitleText(
                    title: widget.title ?? "",
                    fontSize: 18,
                    color: AppStyle.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Visibility(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: isShowArrow ? 0 : 8,
                    ),
                    child: TitleText(
                      title: widget.value ?? "",
                      fontSize: 18,
                      color: AppStyle.secondaryTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Visibility(
                  visible: isShowArrow,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: Image.asset(
                      'assets/webp/arrow_right.webp',
                      width: 24,
                      height: 24,
                      color: AppStyle.secondaryTextColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
              ],
            ),
            widget.bottomExpandWidget ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
