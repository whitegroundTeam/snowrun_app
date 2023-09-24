import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:lottie/lottie.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/routes/router.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  bool initPage = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      FlutterNativeSplash.remove();
      setState(() {
        initPage = true;
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: AppStyle.white,
        systemNavigationBarColor: AppStyle.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ));
      // commonToast = CommonToast(
      //   key: commonToastKey,
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppStyle.themeData(context),
      builder: (context, child) {
        return Stack(
          children: [
            // const SizedBox.expand(
            //   child: BlurHash(hash: "LITQBuq8fjoxqMe;fjf7fje;f7f7"),
            // ),
            // BackdropFilter(
            //   filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            //   child: Container(
            //     color: Colors.white.withOpacity(0.6),
            //   ),
            // ),
            Visibility(
              visible: initPage,
              child: child ?? const SizedBox(),
            ),
            // IgnorePointer(
            //   ignoring: initPage ? true : false,
            //   child: AnimatedOpacity(
            //     opacity: initPage ? 0.0 : 1.0,
            //     duration: const Duration(milliseconds: 1000),
            //     curve: Curves.easeIn,
            //     child: Container(
            //       color: AppStyle.white,
            //       child: Stack(
            //         fit: StackFit.expand,
            //         children: [
            //           const SizedBox.expand(
            //             child: BlurHash(hash: "LHTOE1q8g1oxqMeWf7e;gdfjfQfQ"),
            //           ),
            //           SizedBox.expand(
            //             child: Image.asset(
            //               'assets/png/background_image.png',
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //           Center(
            //             // child: Lottie.asset("assets/lottie/test_lottie.json", repeat: true),
            //             child: Lottie.asset("assets/lottie/splash_test.json", repeat: false,),
            //           ),
            //           // BackdropFilter(
            //           //   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            //           //   child: Container(
            //           //     color: Colors.black.withOpacity(0),
            //           //   ),
            //           // ),
            //         ],
            //       ),
            //     ),
            //
            //     // Image.asset(
            //     //   width: MediaQuery.of(context).size.width,
            //     //   height: MediaQuery.of(context).size.height,
            //     //   'assets/png/app_icon_64.png',
            //     //   fit: BoxFit.cover,
            //     // ),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}
