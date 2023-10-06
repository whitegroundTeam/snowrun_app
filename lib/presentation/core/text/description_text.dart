import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';

class DescriptionText extends StatefulWidget {
  final String title;
  final double? fontSize;
  final Color? color;

  const DescriptionText({super.key, required this.title, this.fontSize, this.color});

  @override
  State createState() => DescriptionTextState();
}

class DescriptionTextState extends State<DescriptionText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(
        fontSize: widget.fontSize ?? 12.0,
        fontWeight: FontWeight.w500,
        height: 1.2,
        color: widget.color ?? AppStyle.secondaryTextColor,
      ),
    );
  }
}
