import 'dart:ui';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/toast/toast_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  final hiveProvider = getIt<HiveProvider>();
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.asset(
        //   'assets/webp/background_image.webp',
        //   width: MediaQuery.of(context).size.width,
        //   height: MediaQuery.of(context).size.height,
        // ),
        // BackdropFilter(
        //   filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        //   child: Container(
        //     color: Colors.white.withOpacity(0.6),
        //   ),
        // ),
        // Scaffold(
        //   backgroundColor: Colors.transparent,
        //   appBar: AppBar(
        //     backgroundColor: selectedColor,
        //     elevation: 0,
        //   ),
        //   body: BlocProvider(
        //     create: (context) => getIt<UserBloc>(),
        //     child: BlocBuilder<UserBloc, UserState>(
        //       builder: (context, state) {
        //         return SingleChildScrollView(
        //           physics: const BouncingScrollPhysics(
        //             parent: AlwaysScrollableScrollPhysics(),
        //           ),
        //           child: SizedBox(
        //             height: MediaQuery.of(context).size.height,
        //             child: Column(
        //               children: [
        //                 const SizedBox(
        //                   height: 32,
        //                 ),
        //                 const Center(
        //                   child: Text(
        //                     '누구인가요?',
        //                     style: TextStyle(fontSize: 40),
        //                   ),
        //                 ),
        //                 const SizedBox(
        //                   height: 40,
        //                 ),
        //                 _buildMember(
        //                     'assets/webp/julie_avatar.png',
        //                     "줄리",
        //                     Colors.yellow,
        //                     "1ed5b1a69494e060f7476e804085832c07a212da"),
        //                 _buildMember(
        //                     'assets/webp/dan_avatar.png',
        //                     "댄",
        //                     Colors.green,
        //                     "0a1bb476b920cacb2f0765330ae9ef0a6e4bc9fb"),
        //                 _buildMember(
        //                     'assets/webp/kathlyn_avatar.png',
        //                     "케틀린",
        //                     Colors.pink,
        //                     "7fb4fdf50f9358cc4a2b627186d541d0e808597a"),
        //                 _buildMember(
        //                     'assets/webp/luman_avatar.png',
        //                     "루만",
        //                     Colors.blue,
        //                     "2eb7536ceb360ee511418ce1a1e3e6604717f01f"),
        //               ],
        //             ),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),
      ],
    );
  }

  _buildMember(
      String avatarPath, String name, Color borderColor, String authToken) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: CommonDetector(
        onTap: () async {
          setState(() {
            selectedColor = borderColor;
          });
          hiveProvider.setAuthToken(authToken);
          if (!await Geolocator.isLocationServiceEnabled()) {
            _showOpenSettingDialog();
          }

          final checkedPermission = await Geolocator.requestPermission();
          if (checkedPermission == LocationPermission.always ||
              checkedPermission == LocationPermission.whileInUse) {
            if (!mounted) return;
            context.push("/");
          } else {
            _showOpenSettingDialog();
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: borderColor, width: 8.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                avatarPath,
                width: 72,
                height: 72,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _showOpenSettingDialog() async {
    if (!mounted) return;
    await showCommonDialog(context,
        buttonText: "설정으로 이동",
        title: "현재 위치에서 주소를 검색하려면 위치 권한을 활성화 해야합니다.",
        negativeButtonText: "취소", onPressedButton: () async {
          AppSettings.openAppSettings(type: AppSettingsType.location);
          showToast(
            "위치 권한 허용 후 다시 시도해주세요.",
          );

          if (!mounted) return;
          context.pop();
        }, onPressedNegativeButton: () {
          context.pop();
        });
  }
}