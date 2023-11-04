import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/underline_text.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery
        .of(context)
        .size
        .height / 6;

    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<AuthBloc, AuthState>(
            bloc: context.read<AuthBloc>(),
            builder: (context, state) {
              final isAuthenticated = state.user != null;
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
                          // const SizedBox(height: 48,),
                          // CommonButton(
                          //   textColor: AppStyle.black,
                          //   iconColor: AppStyle.black,
                          //   buttonColor: AppStyle.white,
                          //   iconPath: 'assets/webp/apple_logo.webp',
                          //   text: "앱 버전 v0.0.1",
                          //   onTap: () {},
                          // ),
                          // const SizedBox(height: 48,),
                          // CommonButton(
                          //   textColor: AppStyle.black,
                          //   iconColor: AppStyle.black,
                          //   buttonColor: AppStyle.white,
                          //   iconPath: 'assets/webp/apple_logo.webp',
                          //   text: "애플로 로그인 하기",
                          //   onTap: () {},
                          // ),

                          Visibility(
                            visible: isAuthenticated,
                            child: Center(
                              child: CommonDetector(
                                onTap: () {
                                  context.read<AuthBloc>().add(
                                      const AuthEvent.signedOut());
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
        ],
      ),
    );
  }
}
