import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:snowrun_app/domain/auth/auth_method.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/widget/email_auth_button.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/underline_text.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/label_text.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  final hiveProvider = getIt<HiveProvider>();
  final authBloc = getIt<AuthBloc>();
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 4;
    final recentlySignInMethod =
        AuthMethod.findByName(name: hiveProvider.getRecentlySignInMethod());

    bool isIos = Platform.isIOS;

    final emailSignInButton = CommonButton(
      onTap: () {
        context.push("/emailSignInPage");
      },
      text: "이메일로 로그인하기",
      iconPath: 'assets/webp/email.webp',
      iconHeroTag: "emailSignInTag",
    );

    final appleSignInButton = CommonButton(
      textColor: AppStyle.black,
      iconColor: AppStyle.black,
      buttonColor: AppStyle.white,
      iconPath: 'assets/webp/apple_logo.webp',
      text: "애플로 로그인 하기",
      onTap: () {
        authBloc.add(const AuthEvent.signWithApplePressed());
      },
    );

    final googleSignInButton = CommonButton(
      iconPath: 'assets/webp/google_logo.webp',
      text: "구글로 로그인 하기",
      onTap: () {
        authBloc.add(const AuthEvent.signWithGooglePressed());
      },
    );

    Widget? recentlySignInMethodButton;
    List<Widget> otherSignInMethodButtons = [];
    if (recentlySignInMethod == AuthMethod.email) {
      recentlySignInMethodButton = emailSignInButton;
      if(isIos) {
        otherSignInMethodButtons = [appleSignInButton, googleSignInButton];
      } else {
        otherSignInMethodButtons = [googleSignInButton];
      }
    } else if (recentlySignInMethod == AuthMethod.apple) {
      recentlySignInMethodButton = appleSignInButton;
      otherSignInMethodButtons = [googleSignInButton, emailSignInButton];
    } else if (recentlySignInMethod == AuthMethod.google) {
      recentlySignInMethodButton = googleSignInButton;
      if(isIos) {
        otherSignInMethodButtons = [appleSignInButton, emailSignInButton];
      } else{
        otherSignInMethodButtons = [emailSignInButton];
      }
    }

    if (recentlySignInMethodButton == null) {
      if(isIos) {
        otherSignInMethodButtons = [
          googleSignInButton,
          appleSignInButton,
          emailSignInButton
        ];
      } else {
        otherSignInMethodButtons = [
          googleSignInButton,
          emailSignInButton
        ];
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: bouncingScrollPhysics,
            slivers: [
              const CommonAppBar(
                isSliver: true,
                appBarType: AppBarType.back,
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/webp/profile_snow_ball_0.webp',
                          height: previewProfileImageHeight,
                          width: previewProfileImageHeight,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      if (recentlySignInMethodButton != null) ...[
                        const TitleText(
                          title: "가장 최근에 사용한",
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        recentlySignInMethodButton,
                        const SizedBox(
                          height: 24,
                        ),
                      ],
                      ...otherSignInMethodButtons
                          .map(
                            (e) => Column(
                              children: [
                                const SizedBox(
                                  height: 12,
                                ),
                                e,
                              ],
                            ),
                          )
                          .toList(),
                      const SizedBox(
                        height: 36,
                      ),
                      Center(
                        child: CommonDetector(
                          onTap: () {
                            context.push("/signUp");
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            child: UnderlineText(
                              const TitleText(
                                title: "이메일로 가입하기",
                                fontSize: 14,
                                color: AppStyle.white,
                              ),
                              AppStyle.white,
                              width: 1,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
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
