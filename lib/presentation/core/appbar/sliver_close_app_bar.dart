import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

class SliverCloseAppBar extends StatefulWidget {
  final String? title;
  final bool? isShowShadow;
  final Color backgroundColor;
  final Function? onClickCloseButton;

  const SliverCloseAppBar({
    super.key,
    this.title,
    this.isShowShadow,
    this.backgroundColor = AppStyle.background,
    this.onClickCloseButton,
  });

  @override
  State createState() => SliverCloseAppBarState();
}

class SliverCloseAppBarState extends State<SliverCloseAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      automaticallyImplyLeading: false,
      pinned: true,
      centerTitle: false,
      backgroundColor: widget.backgroundColor,
      elevation: widget.isShowShadow == false ? 0 : 2,
      titleSpacing: 0,
      leading: CommonDetector(
        onTap: () {
          widget.onClickCloseButton?.call();
          context.pop();
        },
        child: SizedBox(
          width: 32, height: 32,
          child: Center(
            child: Image.asset(
              'assets/webp/close.webp',
              width: 24,
              height: 24,
              color: AppStyle.white,
            ),
          ),
        ),
      ),
      title: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(right: 32,),
          child: Text(
            widget.title ?? "",
            style: const TextStyle(
              color: AppStyle.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      toolbarHeight: 56,
    );
  }
}
