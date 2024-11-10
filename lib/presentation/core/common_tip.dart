import 'package:doortoout/app_style.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonTip extends StatefulWidget {
  final String tipTitle;
  final TextStyle? tipTitleStyle;
  final String? tipDescription;
  final Color? iconColor;
  final Color? tipColor;

  const CommonTip({
    super.key,
    required this.tipTitle,
    this.tipTitleStyle,
    this.tipDescription,
    this.tipColor,
    this.iconColor,
  });

  @override
  State createState() => CommonTipState();
}

class CommonTipState extends State<CommonTip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: widget.tipColor ?? AppStyle.inputFieldBackground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppStyle.black.withOpacity(0.4),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                width: 20,
                height: 20,
                'assets/webp/info_circle.webp',
                color: widget.iconColor ?? AppStyle.accentColor,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  widget.tipTitle,
                  style: widget.tipTitleStyle ??
                      AppTextStyle.caption01.copyWith(
                        color: AppStyle.white,
                      ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: widget.tipDescription?.isNotEmpty == true,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 12,
                top: 8,
              ),
              child: Text(
                widget.tipDescription ?? "",
                style: AppTextStyle.caption01.copyWith(
                  color: AppStyle.white.withOpacity(0.6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
