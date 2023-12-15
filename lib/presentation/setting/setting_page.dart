import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/app_info/app_info_bloc.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/presentation/auth/sign_in_page.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/underline_text.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/webview/common_webview.dart';
import 'package:snowrun_app/presentation/setting/setting_action_widget.dart';
import 'package:snowrun_app/utils/launch_url.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 6;

    return CommonScaffold(
      body: MultiBlocProvider(
        providers: [
          BlocListener<AuthBloc, AuthState>(
            bloc: context.read<AuthBloc>(),
            listener: (context, state) {
              if (state.status == AuthStatus.unauthenticated) {
                SignInPage.goSignInPage(context);
              }
            },
          ),
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
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
                        BlocBuilder<AppInfoBloc, AppInfoState>(
                          builder: (context, state) {
                            final appVersion = state.appVersion;
                            return SettingActionWidget(
                              onTap: () {
                                if (state.canUpdateVersion == true) {
                                  launchExternalUrl(appVersion.url.getOrCrash());
                                }
                              },
                              title: "앱 버전",
                              value: "${appVersion.current?.getOrCrash()}",
                              isVisibleArrow: false,
                              bottomExpandWidget: state.canUpdateVersion == true
                                  ? Container(
                                      padding: const EdgeInsets.only(
                                          top: 16, bottom: 0),
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
                                    )
                                  : const SizedBox(),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SettingActionWidget(
                            title: "알림",
                            onTap: () {
                              openAppSettings();
                            }),
                        BlocBuilder<AppInfoBloc, AppInfoState>(
                          builder: (context, state) {
                            return Column(
                              children: [
                                ...state.appOperationInfos
                                    .map(
                                      (e) => Padding(
                                        padding: const EdgeInsets.only(
                                          top: 12,
                                        ),
                                        child: SettingActionWidget(
                                          title: e.title.getOrCrash(),
                                          titleColor: e.titleColor.getOrCrash(),
                                          arrowColor: e.arrowColor.getOrCrash(),
                                          onTap: () {
                                            CommonWebViewPage.pushCommonWebView(
                                              context,
                                              e.link.getOrCrash(),
                                              e.title.getOrCrash(),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ],
                            );
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
      ),
    );
  }
}
