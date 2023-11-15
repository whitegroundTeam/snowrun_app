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
  final FirebaseRemoteConfig remoteConfig =
      GetIt.instance<FirebaseRemoteConfig>();
  int imageNumber = 0;

  bool isShowEquipmentStorageBottomSheet = false;

  @override
  void initState() {
    super.initState();
  }

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
      child: WillPopScope(
        onWillPop: () {
          // return showWarningDialog(
          //     description: '', context: context, title: '앱을 종료하시겠어요?')
          //     .then((value) {
          //   return Future.value(value);
          // });
          return Future.value(true);
        },
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
                            actionButtonText: "보관하러 가기");

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
        context,
        "위치 권한 허용 후 다시 시도해주세요.",
      );

      if (!mounted) return;
      context.pop();
    }, onPressedNegativeButton: () {
      context.pop();
    });
  }
}
