import 'dart:async';
import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/app_info/app_info_bloc.dart';
import 'package:doortoout/application/auth/auth_bloc.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/application/home/refresh/home_refresh_bloc.dart';
import 'package:doortoout/application/user/user_bloc.dart';
import 'package:doortoout/infrastructure/hive/hive_provider.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/auth/sign_in_page.dart';
import 'package:doortoout/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:doortoout/presentation/core/text/title_text.dart';
import 'package:doortoout/presentation/home/home_page.dart';
import 'package:doortoout/presentation/invite_code/input_invite_code_page.dart';
import 'package:doortoout/utils/forced_exit_app.dart';
import 'package:doortoout/utils/launch_url.dart';

class LandingPage extends StatefulWidget {
  final bool? needRefresh;

  const LandingPage({
    super.key,
    this.needRefresh,
  });

  @override
  State createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  final homeRefreshBloc = getIt<HomeRefreshBloc>();
  bool isShowInputInviteCodePage = false;
  bool isShowLoading = true;
  Timer? _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _cancelTimer();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocListener<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>(),
          listener: (context, state) async {
            final user = state.user;
            if (state.status == AuthStatus.authenticated && user != null) {
              context.read<UserBloc>().add(UserEvent.saveUser(user));
              HomePage.goHomePage(context);
            } else if (state.status == AuthStatus.unauthenticated) {
              SignInPage.goSignInPage(context);
            }
          },
        ),
        BlocListener<AppInfoBloc, AppInfoState>(
          bloc: context.read<AppInfoBloc>()
            ..add(const AppInfoEvent.getAppInfo()),
          listenWhen: (p, c) {
            return p != c &&
                (c.status == DefaultStatus.success ||
                    c.status == DefaultStatus.failure);
          },
          listener: (context, state) async {
            if (state.isAvailableVersion != null) {
              if (state.isAvailableVersion == false) {
                _showNeedUpdateBottomSheet(
                    context,
                    context
                        .read<AppInfoBloc>()
                        .state
                        .appVersion
                        .url
                        .getOrCrash());
              } else {
                if (state.appInviteCodes != null) {
                  if (isShowInputInviteCodePage) {
                    return;
                  }
                  final inviteCodes =
                      state.appInviteCodes?.inviteCodes.getOrCrash();
                  final savedInviteCode =
                      await getIt<HiveProvider>().getInviteCode();
                  if (inviteCodes?.isNotEmpty == true &&
                      inviteCodes?.contains(savedInviteCode) == false) {
                    if (!mounted) return;
                    InputInviteCodePage.pushInviteCodesPage(
                      context,
                    );
                  } else {
                    if (!mounted) return;
                    _checkAuthAndMoveNextPage(context);
                  }
                  isShowInputInviteCodePage = true;
                } else {
                  _checkAuthAndMoveNextPage(context);
                }
              }
            }
          },
        ),
      ],
      child: BlocBuilder<AppInfoBloc, AppInfoState>(
        bloc: context.read<AppInfoBloc>(),
        builder: (context, state) {
          return Scaffold(
            body: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/webp/snowrun_icon.webp',
                      height: 80,
                      width: 80,
                      color: AppStyle.white,
                    ),
                    const SizedBox(height: 16),
                    FadeInUp(
                      from: 40,
                      delay: const Duration(milliseconds: 800),
                      child: const TitleText(
                        title: "눈을 좋아하시나요?",
                        fontSize: 18,
                        color: AppStyle.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _checkAuthAndMoveNextPage(BuildContext context) {
    if (!mounted) return;
    Future.delayed(const Duration(milliseconds: 2000), () {
      context.read<AuthBloc>().add(const AuthEvent.checkAuth());
    });
  }

  _showNeedUpdateBottomSheet(BuildContext context, String appVersionUrl) {
    showCommonBottomSheet(context,
        title: "업데이트가 필요해요!",
        accentDescription: "불편을 드려 죄송해요. \n더욱 즐겁게 겨울을 나실 수 있게 새로운 기능이 추가되었어요😆",
        actionButtonDescriptionText: "최신 버전으로",
        actionButtonText: "업데이트하러 가기",
        canClose: false, onClickActionButton: () async {
      launchExternalUrl(appVersionUrl);
      exitAppForced();
    });
  }

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }
}
