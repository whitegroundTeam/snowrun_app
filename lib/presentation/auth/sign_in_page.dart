import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/widget/o_auth_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
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
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const CommonAppBar(
                isSliver: true,
                title: "로그인",
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
                      const SizedBox(
                        height: 48,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TitleText(
                              title: "최근 로그인",
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            OAuthButton(
                              textColor: AppStyle.black,
                              buttonColor: AppStyle.white,
                              iconPath: 'assets/webp/apple_logo.webp',
                              text: "애플로 로그인 하기",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: OAuthButton(
                          // textColor: AppStyle.white,
                          // buttonColor: AppStyle.white,
                          iconPath: 'assets/webp/google_logo.webp',
                          text: "구글로 로그인 하기",
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      // const OAuthButton(),
                      // const EmailAuthButton(),
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

  // TODO : 최근 로그인한 영역 만들고 그 안에 버튼 끼워넣을 수 있게
  // TODO : 나머지는 그냥 아래 쭉 보여주기 1.이메인 2.애플 3.구글

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
            context.go("/");
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
