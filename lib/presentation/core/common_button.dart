import 'package:flutter/material.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/label_text.dart';

class CommonButton extends StatefulWidget {
  final Color? buttonColor;
  final Color? textColor;
  final Color? iconColor;
  final String? iconPath;
  final String? text;
  final Function? onTap;
  final String? iconHeroTag;
  final bool? isPrimary;
  final double? borderRadius;
  final double? height;

  const CommonButton(
      {super.key,
      this.buttonColor = AppStyle.secondaryBackground,
      this.textColor = AppStyle.white,
      this.iconColor,
      this.iconPath,
      this.iconHeroTag,
      this.text,
      this.isPrimary,
      this.borderRadius,
      this.height,
      this.onTap});

  @override
  State createState() => CommonButtonState();
}

class CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: widget.height ?? 56,
          decoration: widget.isPrimary == true
              ? BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFE0E044),
                      Color(0xFFFF1F00),

                      // Color(0xFFFFB74D),
                      // Color(0xFFF57C00),
                      // Color(0xFFEF6C00),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius:
                      BorderRadius.circular(widget.borderRadius ?? 12.0),
                  boxShadow: [
                    BoxShadow(
                      color: AppStyle.black.withOpacity(0.2),
                      blurRadius: 15,
                      offset: const Offset(0, 7),
                    ),
                  ],
                )
              : BoxDecoration(
                  color: widget.buttonColor ?? AppStyle.secondaryBackground,
                  borderRadius:
                      BorderRadius.circular(widget.borderRadius ?? 12.0),
                ),
        ),
        CommonDetector(
          onTap: () {
            widget.onTap?.call();
          },
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: widget.height ?? 56,
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
        ),
      ],
    );
  }
}
