

import 'package:flutter/material.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State createState() => HomeAppBarState();
}

class HomeAppBarState extends State<HomeAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      automaticallyImplyLeading: false,
      pinned: false,
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 0, bottom: 0, left: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/webp/logo_text_full.webp',
                ),
              ),
            ),
          ),
          CommonDetector(
            onTap: () {
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 2,
              ),
              child: Image.asset(
                'assets/webp/setting.webp',
                color: AppStyle.white,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      toolbarHeight: 56,
    );
  }
}
