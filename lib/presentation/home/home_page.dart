import 'package:animate_do/animate_do.dart';
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
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final FirebaseRemoteConfig remoteConfig =
      GetIt.instance<FirebaseRemoteConfig>();
  int imageNumber = 0;

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
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 6;
    return MultiBlocProvider(
      providers: [
        BlocListener<AuthBloc, AuthState>(
          listener: (stateContext, state) {
            debugPrint('AuthBloc State $state');
            // state.maybeMap(
            //   unauthenticated: (_) {
            //     // if (localStore.currentUserAuthToken.isNotEmpty) {
            //     //   pushNewHomePage(stateContext);
            //     // } else {
            //     //   stateContext.router.popUntilRoot();
            //     //   stateContext.router.replace(SignRoute());
            //     // }
            //   },
            //   authenticated: (e) async {
            //     stateContext.read<UserBloc>().add(UserEvent.saveUser(e.user));
            //     _permissionBloc =
            //         BlocProvider.of<CheckPermissionBloc>(context);
            //     _permissionBloc.add(
            //         const CheckPermissionEvent.checkInitialPermissions());
            //   },
            //   orElse: () {},
            // );
          },
        ),
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
            final isAuthenticated = authState.user != null;
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
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
                        BounceInUp(
                          duration: const Duration(milliseconds: 1000),
                          delay: const Duration(milliseconds: 500),
                          child: isAuthenticated &&
                                  authState.user?.image
                                          .getOrCrash()
                                          .isNotEmpty ==
                                      true
                              ? CommonDetector(
                                  needAuth: true,
                                  onTap: () {
                                    context.push('/editProfileImage');
                                  },
                                  child: Hero(
                                    tag: "profileImage",
                                    child: Center(
                                      child: CommonNetworkImage(
                                          height: previewProfileImageHeight,
                                          width: previewProfileImageHeight,
                                          imageBackgroundColor:
                                              Colors.transparent,
                                          imageUrl: authState.user?.image
                                                  .getOrCrash() ??
                                              ""),
                                    ),
                                  ),
                                )
                              :
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
                                            color:
                                                AppStyle.white.withOpacity(0.7),
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
                                                    color: AppStyle
                                                        .actionIconColor,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        isAuthenticated
                            ? Text(
                                authState.user?.nickname.getOrCrash() ?? '',
                                style: const TextStyle(
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

                        const SizedBox(
                          height: 96,
                        ),
                        Text(
                          isAuthenticated ? "인증 됐다" : "인증 안됐다",
                          style: const TextStyle(
                              fontSize: 20,
                              color: AppStyle.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          authState.user?.image.getOrCrash().isNotEmpty == true
                              ? "이미지 비어있지 않다"
                              : "이미지 비어있다",
                          style: const TextStyle(
                              fontSize: 20,
                              color: AppStyle.white,
                              fontWeight: FontWeight.bold),
                        ),
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
