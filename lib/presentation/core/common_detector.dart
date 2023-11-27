import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/presentation/auth/sign_in_page.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class CommonDetector extends StatefulWidget {
  final Function? onTap;
  final Widget? child;
  final int? delay;

  //해당 기능 사용을 위해 인증이 필요한 경우를 위한 callbak
  final bool? needAuth;

  final HitTestBehavior? behavior;

  const CommonDetector({
    super.key,
    this.behavior,
    this.onTap,
    this.child,
    this.needAuth,
    this.delay,
  });

  @override
  State createState() => CommonDetectorState();
}

class CommonDetectorState extends State<CommonDetector>
    with SingleTickerProviderStateMixin {
  static const defaultDelay = 1000;
  DateTime? lastClickTime;

  double? _scale;
  AnimationController? _controller;

  bool isClicked = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.04,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller?.stop();
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - (_controller?.value ?? 0);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final isAuthenticated = state.user != null;
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTapDown: (tapDownDetails) {
            _startClick();
          },
          onTapCancel: () {
            _finishClick();
          },
          onTapUp: (tapDownDetails) {
            _finishClick();
            Future.delayed(const Duration(milliseconds: 300)).then((value) {
              final now = DateTime.now();
              if (lastClickTime == null ||
                  now.difference(lastClickTime!) >
                      Duration(milliseconds: widget.delay ?? defaultDelay)) {
                if (widget.needAuth == true) {
                  if (!isAuthenticated) {
                    showToast(context, "로그인이 필요해요!");
                    SignInPage.pushSignInPage(context);
                  } else {
                    widget.onTap?.call();
                  }
                } else {
                  widget.onTap?.call();
                }
                lastClickTime = now;
              }
              return value;
            });
          },
          child: Transform.scale(
            scale: _scale,
            child: Container(child: widget.child),
          ),
        );
      },
    );
  }

  void _startClick() {
    _controller?.forward();
  }

  void _finishClick() {
    Future.delayed(const Duration(milliseconds: 150))
        .then((value) => _controller?.reverse());
  }
}
