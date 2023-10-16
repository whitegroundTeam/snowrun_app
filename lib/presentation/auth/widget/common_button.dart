import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/label_text.dart';

class CommonButton extends StatefulWidget {
  Color? buttonColor = AppStyle.secondaryBackground;
  Color? textColor = AppStyle.white;
  Color? iconColor;
  String? iconPath;
  String? text;
  Function? onTap;
  String? iconHeroTag;
  bool? isPrimary;

  CommonButton(
      {super.key,
      this.buttonColor,
      this.textColor,
      this.iconColor,
      this.iconPath,
      this.iconHeroTag,
      this.text,
      this.isPrimary,
      this.onTap});

  @override
  State createState() => CommonButtonState();
}

class CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return CommonDetector(
      onTap: () {
        widget.onTap?.call();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 56,
        decoration: widget.isPrimary == true
            ? BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFFF44), Color(0xFFFF1F00)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15,
                    offset: const Offset(0, 7),
                  ),
                ],
              )
            : BoxDecoration(
                color: widget.buttonColor ?? AppStyle.secondaryBackground,
                borderRadius: BorderRadius.circular(12),
              ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.iconPath?.isNotEmpty == true) ...{
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 12,
                ),
                child: widget.iconHeroTag?.isNotEmpty == true
                    ? Hero(
                        tag: widget.iconHeroTag ?? "",
                        child: Image.asset(
                          widget.iconPath ?? "",
                          width: 24,
                          height: 24,
                          color: widget.iconColor,
                        ),
                      )
                    : Image.asset(
                        widget.iconPath ?? "",
                        width: 24,
                        height: 24,
                        color: widget.iconColor,
                      ),
              ),
            },
            Expanded(
              child: Center(
                child: LabelText(
                  title: widget.text ?? "",
                  fontSize: 16,
                  color: widget.textColor,
                ),
              ),
            ),
            if (widget.iconPath?.isNotEmpty == true) ...{
              const SizedBox(
                width: 24,
              ),
            }
          ],
        ),
      ),
    );
  }
}
