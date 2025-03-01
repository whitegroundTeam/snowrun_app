import 'package:doortoout/app_style.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:doortoout/presentation/core/common_detector.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State createState() => HomeAppBarState();
}

class HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        alignment: Alignment.topRight,
        child: CommonDetector(
          onTap: () {
            context.push('/setting');
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Hero(
              tag: "settingTag",
              child: Image.asset(
                'assets/webp/setting.webp',
                color: const Color(0xff2F2F2F),
                height: 24,
                width: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
