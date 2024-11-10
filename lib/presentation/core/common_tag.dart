import 'package:doortoout/app_style.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:flutter/widgets.dart';

class CommonTag extends StatefulWidget {
  final Color? tagColor;
  final String tagName;
  final Color? tagNameColor;
  final double? borderRadius;

  const CommonTag(
      {super.key,
      this.tagColor,
      required this.tagName,
      this.tagNameColor,
      this.borderRadius});

  @override
  State createState() => CommonTagState();
}

class CommonTagState extends State<CommonTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 6,
        right: 6,
        top: 2,
        bottom: 4,
      ),
      decoration: BoxDecoration(
        color: widget.tagColor ?? AppStyle.accentOrange,
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
      ),
      child: Text(
        widget.tagName,
        style: AppTextStyle.caption01
            .copyWith(color: widget.tagNameColor ?? AppStyle.black),
      ),
    );
  }
}
