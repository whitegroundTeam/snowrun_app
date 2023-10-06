import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/label_text.dart';

class OAuthButton extends StatefulWidget {
  Color? buttonColor = AppStyle.secondaryBackground;
  Color? textColor = AppStyle.white;
  String? iconPath;
  String? text;

  OAuthButton(
      {super.key, this.buttonColor, this.textColor, this.iconPath, this.text});

  @override
  State createState() => OAuthButtonState();
}

class OAuthButtonState extends State<OAuthButton> {
  @override
  Widget build(BuildContext context) {
    return CommonDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 48,
        decoration: BoxDecoration(
            color: widget.buttonColor ?? AppStyle.secondaryBackground,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.iconPath?.isNotEmpty == true) ...{
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 12,
                ),
                child: Image.asset(
                  widget.iconPath ?? "",
                  width: 24,
                  height: 24,
                  color: widget.textColor,
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
            const SizedBox(width: 24,),
          ],
        ),
      ),
    );
  }
}
