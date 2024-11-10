import 'package:doortoout/app_style.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BulletText extends StatefulWidget {
  final Color? bulletColor;
  final double? bulletSize;
  final String? title;
  final TextStyle? titleStyle;
  final double? titleSize;
  final String? description;
  final TextStyle? descriptionStyle;
  final double? descriptionSize;

  const BulletText(
      {super.key,
      this.bulletColor,
      this.bulletSize,
      this.title,
      this.description,
      this.titleStyle,
      this.descriptionStyle,
      this.titleSize,
      this.descriptionSize});

  @override
  State createState() => BulletTextState();
}

class BulletTextState extends State<BulletText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: widget.bulletSize ?? 4,
          height: widget.bulletSize ?? 4,
          margin: const EdgeInsets.only(top: 6),
          decoration: BoxDecoration(
              color: widget.bulletColor ?? const Color(0xff222222),
              shape: BoxShape.circle),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: RichText(
              text: TextSpan(
                style: widget.titleStyle ?? AppTextStyle.caption01.copyWith(color: AppStyle.white),
                text: widget.title ?? "",
                children: <TextSpan>[
                  TextSpan(
                      text: widget.description ?? "",
                      style: widget.descriptionStyle ?? AppTextStyle.caption00
                          .copyWith(color: AppStyle.white),),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
