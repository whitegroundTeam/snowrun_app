import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';

class TitleText extends StatefulWidget {
  final String title;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLine;
  final TextOverflow? textOverFlow;

  const TitleText({super.key, required this.title, this.fontSize, this.color, this.fontWeight, this.maxLine, this.textOverFlow});

  @override
  State createState() => TitleTextState();
}

class TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      textScaleFactor: 1.0,
      maxLines: widget.maxLine,
      overflow: widget.textOverFlow,
      style: TextStyle(
        fontFamily: "Pretendard",
        fontSize: widget.fontSize ?? 16.0,
        fontWeight: widget.fontWeight ?? FontWeight.w500,
        height: 1.2,
        color: widget.color ?? AppStyle.white,
      ),
    );
  }
}
