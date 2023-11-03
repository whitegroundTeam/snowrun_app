import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

class BackAppBar extends StatefulWidget {
  final String? title;
  final String? actionButtonText;
  final bool? isShowShadow;
  final Function? onClickActionButton;
  final Color backgroundColor;

  const BackAppBar({
    super.key,
    this.title,
    this.actionButtonText,
    this.onClickActionButton,
    this.isShowShadow,
    this.backgroundColor = AppStyle.background,
  });

  @override
  State createState() => BackAppBarState();
}

class BackAppBarState extends State<BackAppBar>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0,
      titleSpacing: 0,
      toolbarHeight: 56,
      elevation: widget.isShowShadow == false ? 0 : 2,
      leading: null,
      backgroundColor: widget.backgroundColor,
      automaticallyImplyLeading: false,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CommonDetector(
            onTap: () {
              context.pop();
            },
            child: Container(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
                left: 16,
              ),
              child: Image.asset(
                'assets/webp/arrow_left.webp',
                color: AppStyle.white,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.title ?? "",
                style: const TextStyle(
                  color: AppStyle.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Visibility(
            visible: widget.actionButtonText?.isNotEmpty == true,
            child: CommonDetector(
              onTap: () {
                widget.onClickActionButton?.call();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyle.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                  border: Border.all(color: AppStyle.black, width: 1.0),
                ),
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 16,
                ),
                child: Text(
                  widget.actionButtonText ?? "",
                  style: const TextStyle(
                    color: AppStyle.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
