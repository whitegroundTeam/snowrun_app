import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/underline_text.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/webview/common_webview.dart';
import 'package:snowrun_app/presentation/setting/setting_action_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 6;

    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: context.read<AuthBloc>(),
        builder: (context, state) {
          final isAuthenticated = state.user != null;

          //TODO : repository로 빼야함

          return CustomScrollView(
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
                      Hero(
                        tag: "settingTag",
                        child: Center(
                          child: Image.asset(
                            'assets/webp/setting_big.webp',
                            height: previewProfileImageHeight,
                            width: previewProfileImageHeight,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 56,
                      ),
                      SettingActionWidget(
                        title: "앱 버전",
                        value: "0.0.1",
                        isVisibleArrow: false,
                        bottomExpandWidget: Container(
                          padding: const EdgeInsets.only(top: 16, bottom: 0),
                          child: Row(
                            children: [
                              const Expanded(
                                child: TitleText(
                                  title: "업데이트 하고 새로운 기능 사용하기!",
                                  fontSize: 16,
                                  color: AppStyle.accentColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                'assets/webp/arrow_right.webp',
                                width: 24,
                                height: 24,
                                color: AppStyle.accentColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SettingActionWidget(
                          title: "알림",
                          onTap: () {
                            openAppSettings();
                          }),
                      const SizedBox(
                        height: 12,
                      ),
                      SettingActionWidget(
                        title: "이용약관",
                        onTap: () {
                          CommonWebViewPage.pushCommonWebView(
                              context,
                              "https://snowrun-server-bucket-production.s3.ap-northeast-2.amazonaws.com/terms/terms_of_service/terms_of_service.html",
                              "이용약관");
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SettingActionWidget(
                        title: "개인정보 처리방침",
                        onTap: () {
                          CommonWebViewPage.pushCommonWebView(
                              context,
                              "https://snowrun-server-bucket-production.s3.ap-northeast-2.amazonaws.com/terms/privacy_policy/privacy_policy.html",
                              "개인정보 처리방침");
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SettingActionWidget(
                        title: "위치기반서비스 이용약관",
                        onTap: () {
                          CommonWebViewPage.pushCommonWebView(
                              context,
                              "https://snowrun-server-bucket-production.s3.ap-northeast-2.amazonaws.com/terms/location/location.html",
                              "위치기반서비스 이용약관");
                        },
                      ),
                      Visibility(
                        visible: isAuthenticated,
                        child: Center(
                          child: CommonDetector(
                            onTap: () {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.signedOut());
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 48,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              child: const UnderlineText(
                                TitleText(
                                  title: "로그아웃 하기",
                                  fontSize: 16,
                                  color: AppStyle.white,
                                ),
                                AppStyle.white,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
