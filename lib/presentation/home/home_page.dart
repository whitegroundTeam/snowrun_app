import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/home/refresh/home_refresh_bloc.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/webview/common_webview.dart';
import 'package:snowrun_app/presentation/home/home_bottom_band.dart';
import 'package:snowrun_app/presentation/home/home_profile_widget.dart';
import 'package:snowrun_app/presentation/home/home_ridings_widget.dart';
import 'package:snowrun_app/presentation/home/home_start_riding_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final homeRefreshBloc = getIt<HomeRefreshBloc>();
  final FirebaseRemoteConfig remoteConfig =
      GetIt.instance<FirebaseRemoteConfig>();
  int imageNumber = 0;

  bool isShowEquipmentStorageBottomSheet = false;

  void handleRemoteConfig() {
    remoteConfig.fetchAndActivate().then((value) {
      // _handleNewFeatureDialog();
      // _handleAppNotice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeRefreshBloc>(
            create: (context) => homeRefreshBloc),
        BlocListener<CheckPermissionBloc, CheckPermissionState>(
          bloc: context.read<CheckPermissionBloc>(),
          listenWhen: (p, c) {
            debugPrint('[CheckPermissionBloc Listener] State Changed $p to $c');
            return p != c;
          },
          listener: (context, state) {
            state.map(
              initPermissionsNeeded: (e) {
                context.push('/notificationPermission');
              },
              initPermissionsUnNeeded: (e) {
                // setupInteractedMessageTerminated();
                // setupInteractedDynamicLinkTerminated();
                handleRemoteConfig();

                FirebaseMessaging.instance.getToken().then((token) {
                  if (token != null &&
                      context.read<AuthBloc>().state.status ==
                          AuthStatus.authenticated) {
                    context
                        .read<UserBloc>()
                        .add(UserEvent.savePushToken(token));
                  }
                });
              },
              initial: (e) {},
            );
          },
        ),
      ],
      child: PopScope(
        // onWillPop: () {
        //   // return showWarningDialog(
        //   //     description: '', context: context, title: '앱을 종료하시겠어요?')
        //   //     .then((value) {
        //   //   return Future.value(value);
        //   // });
        //   return Future.value(true);
        // },
        child: BlocBuilder<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>(),
          builder: (context, authState) {
            return BlocBuilder<CheckPermissionBloc, CheckPermissionState>(
              bloc: context.read<CheckPermissionBloc>()
                ..add(const CheckPermissionEvent.checkInitialPermissions()),
              buildWhen: (p, c) {
                debugPrint(
                    '[CheckPermissionBloc Builder] State Changed $p to $c');
                return p != c;
              },
              builder: (context, state) {
                return state.map<Widget>(
                  initPermissionsNeeded: (e) => const Scaffold(
                    backgroundColor: AppStyle.background,
                    body: SizedBox(),
                  ),
                  initPermissionsUnNeeded: (e) {
                    if (!isShowEquipmentStorageBottomSheet) {
                      Future.delayed(const Duration(seconds: 1), () {
                        showCommonBottomSheet(context,
                            title: "장비 보관하기 번거로우시죠?",
                            accentDescription: "스노우런이 도와드릴게요!",
                            actionButtonDescriptionText: "데크, 바인딩, 부츠 등 어느 장비든",
                            actionButtonText: "보관하러 가기",
                            onClickActionButton: () {
                          CommonWebViewPage.pushCommonWebView(context,
                              "https://smore.im/form/VhD3HQMVVy", "장비 보관 신청서");
                        });

                        // showCommonBottomSheet(
                        //   context,
                        //   title: "업데이트가 꼭 필요해요",
                        //   accentDescription:
                        //       "더욱 즐겁게 겨울을 나실 수 있게 새로운 기능이 추가되었어요.\n업데이트 해주실거죠?😆",
                        //   actionButtonDescriptionText: "최신버전으로",
                        //   actionButtonText: "업데이트하러 가기",
                        //   canClose: false,
                        // );
                      });
                      isShowEquipmentStorageBottomSheet = true;
                    }

                    return const Scaffold(
                      body: Column(
                        children: [
                          Expanded(
                            child: CustomScrollView(
                              physics: bouncingScrollPhysics,
                              slivers: [
                                CommonAppBar(
                                  appBarType: AppBarType.home,
                                ),
                                HomeProfileWidget(),
                                HomeStartRidingWidget(),
                                HomeRidingsWidget(),
                              ],
                            ),
                          ),
                          HomeBottomBand(),
                        ],
                      ),
                    );
                  },
                  initial: (e) => const Scaffold(
                    backgroundColor: Colors.white,
                    body: SizedBox(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
