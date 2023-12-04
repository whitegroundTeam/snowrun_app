import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/application/app_info/app_info_bloc.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/application/home/refresh/home_refresh_bloc.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/sign_in_page.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/webview/common_webview.dart';
import 'package:snowrun_app/presentation/home/home_bottom_band.dart';
import 'package:snowrun_app/presentation/home/home_profile_widget.dart';
import 'package:snowrun_app/presentation/home/home_ridings_widget.dart';
import 'package:snowrun_app/presentation/home/home_start_riding_widget.dart';
import 'package:snowrun_app/utils/launch_url.dart';

class HomePage extends StatefulWidget {
  final bool? needRefresh;

  const HomePage({
    super.key,
    this.needRefresh,
  });

  @override
  State createState() => HomePageState();

  static pushRidingPage(
    BuildContext context, {
    Function? onResult,
    bool? needRefresh = false,
  }) {
    context.push(
      '/',
      extra: {
        'needRefresh': needRefresh,
      },
    ).then((value) => onResult?.call());
  }

  static goHomePage(
    BuildContext context, {
    bool? needRefresh = false,
  }) {
    context.go(
      '/',
      extra: {
        'needRefresh': needRefresh,
      },
    );
  }
}

class HomePageState extends State<HomePage> {
  final homeRefreshBloc = getIt<HomeRefreshBloc>();
  final checkPermissionBloc = getIt<CheckPermissionBloc>();
  final FirebaseRemoteConfig remoteConfig =
      GetIt.instance<FirebaseRemoteConfig>();
  int imageNumber = 0;
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  bool isShowAppNoticeBottomSheet = false;

  // bool isShowEquipmentStorageBottomSheet = false;

  void handleRemoteConfig() {
    remoteConfig.fetchAndActivate().then((value) {
      // _handleNewFeatureDialog();
      // _handleAppNotice();
    });
  }

  @override
  void initState() {
    super.initState();
    initDeepLinks();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.needRefresh == true) {
      homeRefreshBloc.add(const HomeRefreshEvent.refresh());
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider<CheckPermissionBloc>(
            create: (context) => checkPermissionBloc),
        BlocProvider<HomeRefreshBloc>(
            create: (context) => widget.needRefresh == true
                ? (homeRefreshBloc..add(const HomeRefreshEvent.refresh()))
                : homeRefreshBloc),
        // BlocProvider<AuthBloc>(
        //     create: (context) =>
        //         context.read<AuthBloc>()..add(const AuthEvent.checkAuth())),
        BlocListener<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>(),
          listener: (stateContext, state) async {
            debugPrint('AuthBloc State $state');
            if (state.status == AuthStatus.unauthenticated) {
              final authToken = await getIt<HiveProvider>().getAuthToken();
              if (authToken.isEmpty) {
                SignInPage.pushSignInPage(context, onResult: () {
                  // context.read<AuthBloc>().add(const AuthEvent.checkAuth());
                });
              }
              // if (authToken.isNotEmpty) {
              //   // pushNewHomePage(stateContext);
              //   context.read<AuthBloc>().add(const AuthEvent.checkAuth());
              // } else {
              //   SignInPage.pushSignInPage(context, onResult: () {
              //     context.read<AuthBloc>().add(const AuthEvent.checkAuth());
              //   });
              // }
            } else if (state.status == AuthStatus.authenticated) {
              final user = state.user;
              if (user != null) {
                stateContext.read<UserBloc>().add(UserEvent.saveUser(user));
                checkPermissionBloc
                    .add(const CheckPermissionEvent.checkInitialPermissions());
              }
            }
          },
        ),
        BlocListener<CheckPermissionBloc, CheckPermissionState>(
          bloc: checkPermissionBloc,
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
        BlocListener<AppInfoBloc, AppInfoState>(
          bloc: context.read<AppInfoBloc>(),
          listenWhen: (p, c) {
            return c.status == DefaultStatus.success ||
                c.status == DefaultStatus.failure;
          },
          listener: (context, state) {
            if (state.isAvailableVersion != null) {
              if (state.isAvailableVersion == false) {
                showCommonBottomSheet(context,
                    title: "업데이트가 필요해요!",
                    accentDescription: "불편을 드려 죄송해요. \n하지만 더욱 즐겁게 겨울을 나실 수 있게 새로운 기능이 추가되었어요😆",
                    actionButtonDescriptionText: "최신 버전으로",
                    actionButtonText: "업데이트하러 가기",
                    canClose: false,
                    onClickActionButton: () async {
                      launchExternalUrl(state.appVersion.url.getOrCrash());
                    });
              } else {
                // final clickedAt = getIt<HiveProvider>().getAppNoticeNotViewedToday();
                // if (!isShowAppNoticeBottomSheet &&
                //     (clickedAt.isEmpty ||
                //         DateTime.parse(clickedAt).day !=
                //             DateTime.now().day)) {
                //   // bannerBloc
                //   //     .add(const BannerEvent.getBanners(BannerType.popup));
                // }



                // if (isShowAppNoticeBottomSheet) {
                //   return;
                // }
                //
                // final clickedAt =
                // getIt<HiveProvider>().getAppNoticeNotViewedToday();
                // if (state.banners.isNotEmpty &&
                //     (clickedAt.isEmpty ||
                //         DateTime.parse(clickedAt).day != DateTime.now().day)) {
                //   getIt<HiveProvider>().setAppNoticeNotViewedToday("");
                //   showAppNoticeBottomSheet(context, state.banners);
                //   isShowAppNoticeBottomSheet = true;
                // }
              }
            }
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
            if (authState.status != AuthStatus.authenticated) {
              return const SizedBox();
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

            // return BlocBuilder<CheckPermissionBloc, CheckPermissionState>(
            //   bloc: checkPermissionBloc,
            //     // ..add(const CheckPermissionEvent.checkInitialPermissions()),
            //   buildWhen: (p, c) {
            //     debugPrint(
            //         '[CheckPermissionBloc Builder] State Changed $p to $c');
            //     return p != c;
            //   },
            //   builder: (context, state) {
            //     return state.map<Widget>(
            //       initPermissionsNeeded: (e) => const Scaffold(
            //         backgroundColor: AppStyle.background,
            //         body: SizedBox(),
            //       ),
            //       initPermissionsUnNeeded: (e) {
            //         // if (!isShowEquipmentStorageBottomSheet) {
            //         //   Future.delayed(const Duration(seconds: 1), () {
            //         //     showCommonBottomSheet(context,
            //         //         title: "장비 보관하기 번거로우시죠?",
            //         //         accentDescription: "스노우런이 도와드릴게요!",
            //         //         actionButtonDescriptionText: "데크, 바인딩, 부츠 등 어느 장비든",
            //         //         actionButtonText: "보관하러 가기",
            //         //         onClickActionButton: () {
            //         //       CommonWebViewPage.pushCommonWebView(context,
            //         //           "https://smore.im/form/VhD3HQMVVy", "장비 보관 신청서");
            //         //     });
            //         //
            //         //     // showCommonBottomSheet(
            //         //     //   context,
            //         //     //   title: "업데이트가 꼭 필요해요",
            //         //     //   accentDescription:
            //         //     //       "더욱 즐겁게 겨울을 나실 수 있게 새로운 기능이 추가되었어요.\n업데이트 해주실거죠?😆",
            //         //     //   actionButtonDescriptionText: "최신버전으로",
            //         //     //   actionButtonText: "업데이트하러 가기",
            //         //     //   canClose: false,
            //         //     // );
            //         //   });
            //         //   isShowEquipmentStorageBottomSheet = true;
            //         // }
            //
            //         if(authState.status != AuthStatus.authenticated) {
            //           return const SizedBox();
            //         }
            //
            //         return const Scaffold(
            //           body: Column(
            //             children: [
            //               Expanded(
            //                 child: CustomScrollView(
            //                   physics: bouncingScrollPhysics,
            //                   slivers: [
            //                     CommonAppBar(
            //                       appBarType: AppBarType.home,
            //                     ),
            //                     HomeProfileWidget(),
            //                     HomeStartRidingWidget(),
            //                     HomeRidingsWidget(),
            //                   ],
            //                 ),
            //               ),
            //               HomeBottomBand(),
            //             ],
            //           ),
            //         );
            //       },
            //       initial: (e) => const Scaffold(
            //         backgroundColor: Colors.white,
            //         body: SizedBox(),
            //       ),
            //     );
            //   },
            // );
          },
        ),
      ),
    );
  }

  Future<void> initDeepLinks() async {
    _appLinks = AppLinks();

    // Check initial link if app was in cold state (terminated)
    final appLink = await _appLinks.getInitialAppLink();
    if (appLink != null) {
      debugPrint('getInitialAppLink: $appLink');
      openAppLink(appLink);
    }

    // Handle link when app is in warm state (front or background)
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      debugPrint('onAppLink: $uri');
      openAppLink(uri);
    });
  }

  void openAppLink(Uri uri) {
    context.pushNamed(uri.fragment);
  }
}
