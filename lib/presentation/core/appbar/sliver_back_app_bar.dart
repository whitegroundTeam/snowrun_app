import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

class SliverBackAppBar extends StatefulWidget {
  final Widget? expandWidget;
  final double? expandWidgetHeight;

  final Widget? flexibleWidget;
  final double? flexibleWidgetHeight;
  final String? title;
  final String? actionButtonText;
  final Function? onClickActionButton;
  final Color backgroundColor;

  const SliverBackAppBar({
    super.key,
    this.expandWidget,
    this.expandWidgetHeight,
    this.flexibleWidget,
    this.flexibleWidgetHeight,
    this.title,
    this.actionButtonText,
    this.onClickActionButton,
    this.backgroundColor = AppStyle.background,
  });

  @override
  State createState() => SliverBackAppBarState();
}

class SliverBackAppBarState extends State<SliverBackAppBar>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      automaticallyImplyLeading: false,
      expandedHeight: widget.flexibleWidgetHeight,
      bottom: widget.flexibleWidget != null
          ? AppBar(
              backgroundColor: AppStyle.white,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: widget.flexibleWidget,
            )
          : null,
      pinned: true,
      backgroundColor: widget.backgroundColor,
      titleSpacing: 0,
      leadingWidth: 0,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
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
                      color: AppStyle.white,
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
                      border:
                          Border.all(color: AppStyle.black, width: 1.0),
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
          widget.expandWidget ?? const SizedBox(),
        ],
      ),
      toolbarHeight: 56 + (widget.expandWidgetHeight ?? 0),
    );
  }
}
