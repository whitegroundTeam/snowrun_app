import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_tag.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonInfoButton extends StatefulWidget {
  final double? maxWidth;
  final String? iconPath;
  final Color? iconColor;
  final String? actionIconPath;
  final Color? actionIconColor;
  final String? title;
  final String? description;
  final Color? descriptionColor;
  final Function? onClick;
  final List<String>? tags;
  final Color? tagTextColor;

  const CommonInfoButton({
    super.key,
    this.maxWidth,
    this.iconPath,
    this.iconColor,
    this.actionIconPath,
    this.actionIconColor,
    this.title,
    this.description,
    this.descriptionColor,
    this.tags,
    this.tagTextColor,
    this.onClick,
  });

  @override
  State createState() => CommonInfoButtonState();
}

class CommonInfoButtonState extends State<CommonInfoButton> {
  @override
  Widget build(BuildContext context) {
    return CommonDetector(
      onTap: () {
        widget.onClick?.call();
      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth: widget.maxWidth ?? MediaQuery.of(context).size.width,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: AppStyle.inputFieldBackground,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: AppStyle.inputFieldInactiveBorder,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: widget.iconPath?.isNotEmpty == true,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 12,
                          ),
                          child: Image.asset(
                            width: 24,
                            height: 24,
                            widget.iconPath ?? "",
                            color: AppStyle.accentColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Visibility(
                              visible: widget.title?.isNotEmpty == true,
                              child: Text(
                                "${widget.title}",
                                style: AppTextStyle.body04.copyWith(
                                  color: AppStyle.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const Spacer(),
                    ],
                  ),
                  Visibility(
                    visible: widget.description?.isNotEmpty == true,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: widget.iconPath?.isNotEmpty == true ? 36 : 0,
                        right: 36,
                      ),
                      child: Text(
                        "${widget.description}",
                        style: AppTextStyle.caption00.copyWith(
                          color: widget.descriptionColor ??
                              AppStyle.white.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.tags?.isNotEmpty == true,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: widget.iconPath?.isNotEmpty == true ? 30 : 0,
                        top: 8,
                      ),
                      child: Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: (widget.tags ?? []).map((tag) {
                          return CommonTag(
                            tagName: tag,
                            tagNameColor:
                                widget.tagTextColor ?? AppStyle.accentOrange,
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Image.asset(
              width: 24,
              height: 24,
              widget.actionIconPath ?? 'assets/webp/chevron_right.webp',
              color: widget.actionIconColor ?? AppStyle.white,
            ),
          ],
        ),
      ),
    );
  }
}
