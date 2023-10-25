import 'dart:convert';
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/riding/riding_page.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _storage = const FlutterSecureStorage();

  int imageNumber = 0;

  @override
  Widget build(BuildContext context) {
    final isAuthenticated = context.read<AuthBloc>().state.user != null;
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 6;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Align(
          alignment: Alignment.topRight,
          child: CommonDetector(
            delay: 300,
            onTap: () {
              context.push('/setting');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Hero(
                tag: "settingTag",
                child: Image.asset(
                  'assets/webp/setting.webp',
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
        ),
        isAuthenticated
            ? CommonDetector(
                needAuth: true,
                onTap: () {
                  context.push('/editProfileImage');
                },
                child: Hero(
                  tag: "profileImage",
                  child: Center(
                    child: Image.asset(
                      'assets/webp/profile_snow_ball_$imageNumber.webp',
                      height: previewProfileImageHeight,
                      width: previewProfileImageHeight,
                    ),
                  ),
                ),
              )
            :
            //TODO : 아바타 user
            CommonDetector(
                needAuth: true,
                onTap: () {
                  context.push('/editProfileImage');
                },
                child: Hero(
                  tag: "profileImage",
                  child: Center(
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/webp/profile_placeholder.webp',
                          height: previewProfileImageHeight,
                          width: previewProfileImageHeight,
                          color: AppStyle.white.withOpacity(0.7),
                        ),
                        const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 36,
                                  color: AppStyle.actionIconColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
        const SizedBox(
          height: 16,
        ),
        isAuthenticated
            ? const Text(
                "감자눈송이#3132",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            : const Text(
                "마음에드는 눈송이를 선택해주세요!",
                style: TextStyle(
                    fontSize: 16,
                    color: AppStyle.secondaryTextColor,
                    fontWeight: FontWeight.bold),
              ),

        // const SizedBox(
        //   height: 24,
        // ),
        // CommonButton(
        //   onTap: () {
        //     _checkLocationPermission();
        //   },
        //   text: "라이딩화면으로 이동하기",
        // )

        // Expanded(
        //   child: SizedBox(),
        // )

        // const SizedBox(
        //   height: 32,
        // ),
        // Center(
        //   child: Container(
        //     width: 100,
        //     height: 100,
        // decoration: BoxDecoration(
        //   borderRadius:
        //   BorderRadius.circular(16),
        //   // borderSide: const BorderSide(color: Colors.white, width: 2),
        //   // badgeColor:
        //   // const Color(0xffDA1E28),
        // ),
        //     child: ClipRRect(
        //       borderRadius: BorderRadius.circular(4),
        //       child: Stack(
        //         children: [
        //           const BlurHash(hash: "LHTOE1q8g1oxqMeWf7e;gdfjfQfQ",),
        //           Container(
        //             margin: const EdgeInsets.all(2),
        //             color: AppStyle.background,
        //           )
        //           // Positioned(
        //           //   right: 4, left: 4, top: 4, bottom: 4,
        //           //   child: Container(
        //           //     color: AppStyle.background,
        //           //   ),),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    )
        //     Container(
        //       width: 100,
        //       height: 100,
        //       padding: const EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //         gradient: const LinearGradient(
        //           begin: Alignment.bottomRight,
        //           end: Alignment.topLeft,
        //           colors: [
        //             Color(0xff4dabf7),
        //             Color(0xffda77f2),
        //             Color(0xfff783ac),
        //           ],
        //         ),
        //         borderRadius: BorderRadius.circular(500),
        //       ),
        //       child: const CircleAvatar(
        //         radius: 250,
        //         backgroundImage: AssetImage("assets/images/person-winter.png"),
        //       ),
        //     ),
        //     GestureDetector(
        //       onTap: () {
        //         context.push('/recording');
        //       },
        //       child: Container(
        //         padding: const EdgeInsets.all(0.0),
        //         height: 100,
        //         width: 100,
        //         decoration: BoxDecoration(
        //             color: Colors.black,
        //             borderRadius: BorderRadius.circular(100)),
        //         child: const Icon(
        //           Icons.play_arrow,
        //           size: 80,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ],
        // )
        // const SliverAppBar(
        //   backgroundColor: Colors.white,
        //   title: Text('Record', style: TextStyle(color: Colors.black),),
        // ),
        // SliverList(
        //     delegate: SliverChildBuilderDelegate(
        //             (context, index) {
        //           return Card(
        //             margin: const EdgeInsets.all(10),
        //             child: GestureDetector(
        //               onTap: (){
        //                 context.push('/result');
        //               },
        //               child: Container(
        //                 color: Colors.yellow,
        //                 height: 80,
        //                 alignment: Alignment.center,
        //                 child: Text('기록 ${index}'),
        //               ),
        //             ),
        //           );
        //         },
        //         childCount: 10
        //     )
        // )
        // floatingActionButton: FloatingActionButton(
        //     onPressed: (){
        //       context.push('/recording');
        //     },
        //   backgroundColor: Colors.black,
        //   child: const Icon(Icons.navigate_next),
        // ),
        );
  }

  _checkLocationPermission() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      _showOpenSettingDialog();
    }

    final checkedPermission = await Geolocator.requestPermission();

    if (checkedPermission == LocationPermission.always ||
        checkedPermission == LocationPermission.whileInUse) {
      if (!mounted) return;
      context.push("/recording");
    } else {
      _showOpenSettingDialog();
    }
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
