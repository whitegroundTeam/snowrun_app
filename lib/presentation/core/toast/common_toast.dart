import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/toast/toast_bloc.dart';

class CommonToast extends StatefulWidget {
  final String? message;

  const CommonToast({super.key, this.message});

  @override
  State createState() => CommonToastState();
}

class CommonToastState extends State<CommonToast> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _fadeInOut;
  late Animation<double> _scale;
  Timer? _timer;

  String? message = "";

  @override
  void initState() {
    super.initState();
    message = widget.message;

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _fadeInOut = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.3, curve: Curves.easeOut),
      reverseCurve: const Interval(0.8, 1.0, curve: Curves.easeIn),
    ));

    _scale = Tween<double>(begin: 0.8, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.3, curve: Curves.easeOut),
      // reverseCurve: const Interval(1.0, 1.0, curve: Curves.easeIn),
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    _cancelTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (message?.isNotEmpty == true) {
      _startAnimation();
    } else {
      return const SizedBox();
    }

    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Opacity(
            opacity: _fadeInOut.value,
            child: Transform.scale(
              scale: _scale.value,
              child: child,
            ),
          );
        },
        child: IgnorePointer(
          ignoring: true,
          child: Center(
            child: Wrap(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    color: AppStyle.toastBackground,
                    // color: KyochonStyles.yellow,
                    borderRadius: BorderRadius.circular(1.0),
                    // 원하는 모양에 따라 반경을 조절
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12, // 그림자의 색상
                        blurRadius: 10.0, // 그림자의 흐림 정도
                        spreadRadius: 1.0, // 그림자의 확장 정도
                        offset: Offset(5.0, 5.0), // 그림자의 위치
                      ),
                    ],
                  ),
                  child: Text(
                    message ?? "",
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppStyle.toastText,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  _startAnimation() {
    _controller.forward();
    _timer = Timer(const Duration(milliseconds: 1500), () {
      _controller.reverse();
      context.read<ToastBloc>().add(const ToastEvent.reset());
    });
  }

  updateMessage(String? newMessage) {
    _controller.reset();
    _cancelTimer();
    setState(() {
      message = newMessage;
    });
  }

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }
}

showToast(String message) {
  getIt<ToastBloc>().add(ToastEvent.show(message));
}
