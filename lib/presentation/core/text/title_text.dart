import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';

class TitleText extends StatefulWidget {
  final String title;
  final double? fontSize;
  final Color? color;

  const TitleText({super.key, required this.title, this.fontSize, this.color});

  @override
  State createState() => TitleTextState();
}

class TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(
        fontSize: widget.fontSize ?? 16.0,
        fontWeight: FontWeight.w500,
        height: 1.2,
        color: widget.color ?? AppStyle.white,
      ),
    );
  }
}
