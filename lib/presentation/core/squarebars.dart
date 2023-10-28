import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

void showSquareBar(BuildContext context, String text, {Function()? onDone}) {
  final textTheme = Theme.of(context).textTheme;
  showGeneralDialog(
    context: context,
    barrierColor: Colors.transparent,
    pageBuilder: (c, __, ___) {
      Future.delayed(const Duration(milliseconds: 1900), () {
        c.pop();
      });
      return Material(
        color: Colors.transparent,
        child: Center(
          child: SizedBox(
            width: 220,
            height: 220,
            child: Card(
              elevation: 20,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: FadeOut(
                delay: const Duration(milliseconds: 1300),
                duration: const Duration(milliseconds: 600),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'assets/lottie/check.json',
                      height: 140,
                    ),
                    FadeIn(
                      duration: const Duration(milliseconds: 1000),
                      delay: const Duration(milliseconds: 500),
                      child: Text(
                        text,
                        style: textTheme.titleLarge?.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF2B2B2B),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  ).then((value) {
    onDone?.call();
  });
}
