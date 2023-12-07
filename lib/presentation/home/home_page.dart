import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/application/app_info/app_info_bloc.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/application/home/refresh/home_refresh_bloc.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/domain/app-info/model/app_info.dart';
import 'package:snowrun_app/domain/app-info/model/app_notice.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/sign_in_page.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/common_loading.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
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

  bool isShowLoading = true;

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
          listener: (context, state) async {

            //TODO : 초대코드 화면 띄우기 -> hive에서 가져와서 비어있는데 코드가 있으면 화면 띄워주고, 가져왔는데 코드가 비어있ㅈ
            final inviteCodes = state.appInviteCodes?.inviteCodes.getOrCrash();
            final savedInviteCode = await getIt<HiveProvider>().getInviteCode();
            debugPrint("와와오와오아 $inviteCodes  //  $savedInviteCode");
            if(inviteCodes?.isNotEmpty == true && inviteCodes?.contains(savedInviteCode) == false) {
              //TODO : 초대코드 화면 보여주기 // getIt<HiveProvider>().setInviteCode("mock");
              debugPrint("와와오와오아 화면 띄워야돼!!");
            }

            _hideLoading();
            if (state.isAvailableVersion != null) {
              if (state.isAvailableVersion == false) {
                showCommonBottomSheet(context,
                    title: "업데이트가 필요해요!",
                    accentDescription:
                        "불편을 드려 죄송해요. \n더욱 즐겁게 겨울을 나실 수 있게 새로운 기능이 추가되었어요😆",
                    actionButtonDescriptionText: "최신 버전으로",
                    actionButtonText: "업데이트하러 가기",
                    canClose: false, onClickActionButton: () async {
                  launchExternalUrl(state.appVersion.url.getOrCrash());
                });
              } else {
                if (isShowAppNoticeBottomSheet) {
                  return;
                }

                final clickedAt =
                    getIt<HiveProvider>().getAppNoticeNotViewedToday();
                if (state.appNotice != null &&
                    (clickedAt.isEmpty ||
                        DateTime.parse(clickedAt).day != DateTime.now().day)) {
                  getIt<HiveProvider>().setAppNoticeNotViewedToday("");
                  showCommonBottomSheet(context,
                      canClose:
                          state.appNotice?.isForcedFinish.getOrCrash() == false,
                      title: state.appNotice?.title.getOrCrash() ?? "",
                      description: state.appNotice?.description.getOrCrash(),
                      imageUrl: state.appNotice?.imageUrl.getOrCrash(),
                      negativeButtonText:
                          state.appNotice?.negativeButton?.title.getOrCrash() ??
                              "",
                      positiveButtonText:
                          state.appNotice?.positiveButton?.title.getOrCrash() ??
                              "", onClickNegativeButton: () {
                    getIt<HiveProvider>()
                        .setAppNoticeNotViewedToday(DateTime.now().toString());
                    launchExternalUrl(
                        state.appNotice?.negativeButton?.link.getOrCrash() ??
                            dotenv.env['APP_URL_HOST'] ??
                            "");
                    context.pop();
                  }, onClickPositiveButton: () {
                    getIt<HiveProvider>()
                        .setAppNoticeNotViewedToday(DateTime.now().toString());
                    launchExternalUrl(
                        state.appNotice?.positiveButton?.link.getOrCrash() ??
                            dotenv.env['APP_URL_HOST'] ??
                            "");
                    context.pop();
                  }, onClickCloseButton: () {
                    getIt<HiveProvider>()
                        .setAppNoticeNotViewedToday(DateTime.now().toString());
                  });
                  isShowAppNoticeBottomSheet = true;
                }
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

            return Scaffold(
              body: Stack(
                children: [
                  const Column(
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
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Visibility(
                      visible: isShowLoading,
                      child: const CommonLoading(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _showLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isShowLoading) {
        setState(() {
          isShowLoading = true;
        });
      }
    });
  }

  _hideLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isShowLoading) {
        setState(() {
          isShowLoading = false;
        });
      }
    });
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

  _refresh() {
    _showLoading();
  }
}
