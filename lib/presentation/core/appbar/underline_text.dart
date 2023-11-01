import 'package:flutter/widgets.dart';

class UnderlineText extends StatefulWidget {
  final Widget textWidget;
  final Color underlineColor;
  final double? width;
  final double? padding;

  const UnderlineText(
    this.textWidget,
    this.underlineColor, {
    super.key,
    this.width = 2.0,
    this.padding = 0.0,
  });

  @override
  State createState() => UnderlineTextState();
}

class UnderlineTextState extends State<UnderlineText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: widget.underlineColor,
            width: widget.width ?? 2.0,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: widget.padding ?? 0),
        child: widget.textWidget,
      ),
    );
  }
}
