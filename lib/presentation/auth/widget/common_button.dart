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
  bool? isPrimary = false;

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
        decoration: BoxDecoration(
          color: widget.buttonColor ?? AppStyle.secondaryBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          children: [
            if (widget.isPrimary == true) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: const BlurHash(hash: "LHTOE1q8g1oxqMeWf7e;gdfjfQfQ"),
              ),
            ],
            Row(
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
          ],
        ),
      ),
    );
  }
}
