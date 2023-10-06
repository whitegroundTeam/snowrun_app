import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';

class LabelText extends StatefulWidget {
  final String title;
  final double? fontSize;
  final Color? color;

  const LabelText({super.key, required this.title, this.fontSize, this.color});

  @override
  State createState() => LabelTextState();
}

class LabelTextState extends State<LabelText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(
        fontSize: widget.fontSize ?? 24.0,
        fontWeight: FontWeight.bold,
        height: 1.2,
        color: widget.color ?? AppStyle.white,
      ),
    );
  }
}
