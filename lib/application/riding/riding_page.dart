import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class RidingPage extends StatefulWidget {
  const RidingPage({super.key});

  @override
  State createState() => RidingPageState();
}

class RidingPageState extends State<RidingPage> {
  final hiveProvider = getIt<HiveProvider>();
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            "로그인 하기",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppStyle.white,
            ),
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
