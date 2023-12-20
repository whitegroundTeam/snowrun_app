import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_tag.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonTitle extends StatefulWidget {
  final String title;
  final bool? isRequired;
  final double? horizontalPadding;
  final double? verticalPadding;
  final String? actionButtonName;
  final Function? onClickActionButton;

  const CommonTitle(
      {super.key,
      required this.title,
      this.isRequired = false,
      this.horizontalPadding,
      this.verticalPadding,
      this.actionButtonName,
      this.onClickActionButton});

  @override
  State createState() => CommonTitleState();
}

class CommonTitleState extends State<CommonTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO : 태블릿과 모바일 구분해야함
      // constraints: BoxConstraints(
      //   maxWidth:
      // )
      padding: EdgeInsets.symmetric(
        horizontal: widget.horizontalPadding ?? 0,
        vertical: widget.verticalPadding ?? 0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: AppTextStyle.heading04.copyWith(
              color: AppStyle.white.withOpacity(
                0.6,
              ),
            ),
          ),
          Visibility(
            visible: widget.isRequired == true,
            child: Text(
              ' *',
              style: AppTextStyle.heading04.copyWith(
                color: AppStyle.accentRed,
              ),
            ),
          ),
          const Spacer(),
          Visibility(
            visible: widget.actionButtonName?.isNotEmpty == true,
            child: CommonDetector(
              delay: 200,
              onTap: () {
                widget.onClickActionButton?.call();
              },
              child: Container(
                // color: Colors.pink,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 12,
                  bottom: 12,
                ),
                child: Text(
                  "${widget.actionButtonName}",
                  style: AppTextStyle.caption00.copyWith(
                    color: AppStyle.accentColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
