import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

class CloseAppBar extends StatefulWidget {
  final String? title;
  final bool? isShowShadow;
  final Color backgroundColor;
  final Function? onClickCloseButton;

  const CloseAppBar({
    super.key,
    this.title,
    this.isShowShadow,
    this.backgroundColor = AppStyle.background,
    this.onClickCloseButton,
  });

  @override
  State createState() => CloseAppBarState();
}

class CloseAppBarState extends State<CloseAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleSpacing: 0,
      toolbarHeight: 56,
      elevation: widget.isShowShadow == false ? 0 : 2,
      backgroundColor: widget.backgroundColor,
      leading: CommonDetector(
        onTap: () {
          widget.onClickCloseButton?.call();
          context.pop();
        },
        child: SizedBox(
          width: 32,
          height: 32,
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
      // automaticallyImplyLeading: false,
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

      // actions: [
      //   CommonDetector(
      //     onTap: () {
      //       // 웹에서 새로고침 한 이후엔 router stack 에 아무것도 없기에, pop 할 수 없다.
      //       // FIXME pop 할 수 없을때 어떤 화면으로 랜딩 시킬 것 인지?
      //       if (context.router.canPop()) {
      //         context.router.pop();
      //       } else {
      //         getIt<HomeRefreshBloc>().add(const HomeRefreshEvent.all());
      //         context.router.replaceAll([HomeRoute()]);
      //       }
      //     },
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
      //       child: Image.asset(
      //         'assets/webp/close.webp',
      //         width: 24,
      //         height: 24,
      //         color: KyochonStyles.black,
      //       ),
      //     ),
      //   ),
      // ],
    );
  }
}
