import 'dart:async';

import 'package:app_links/app_links.dart';
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
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_loading.dart';
import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/home/home_bottom_band.dart';
import 'package:snowrun_app/presentation/home/home_profile_widget.dart';
import 'package:snowrun_app/presentation/home/home_ridings_widget.dart';
import 'package:snowrun_app/presentation/home/home_start_riding_widget.dart';
import 'package:snowrun_app/utils/forced_exit_app.dart';
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
  bool isShowLoading = false;

  @override
  void initState() {
    super.initState();
    // initDeepLinks();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.needRefresh == true) {
      context.read<AuthBloc>().add(const AuthEvent.checkAuth());
      homeRefreshBloc.add(const HomeRefreshEvent.refresh());
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeRefreshBloc>(
            create: (context) => widget.needRefresh == true
                ? (homeRefreshBloc..add(const HomeRefreshEvent.refresh()))
                : homeRefreshBloc),
        // BlocProvider<AppInfoBloc>(
        //     create: (context) => context.read<AppInfoBloc>()),
        BlocListener<AppInfoBloc, AppInfoState>(
          bloc: context.read<AppInfoBloc>()
            ..add(const AppInfoEvent.getAppInfo()),
          listenWhen: (p, c) {
            return p != c &&
                (c.status == DefaultStatus.success ||
                    c.status == DefaultStatus.failure);
          },
          listener: (context, state) async {
            if (isShowAppNoticeBottomSheet) {
              return;
            }

            final clickedAt =
                getIt<HiveProvider>().getAppNoticeNotViewedToday();
            if (state.appNotice != null &&
                (clickedAt.isEmpty ||
                    DateTime.parse(clickedAt).day != DateTime.now().day)) {
              await getIt<HiveProvider>().setAppNoticeNotViewedToday("");

              if (!mounted) return;
              showCommonBottomSheet(context,
                  canClose:
                      state.appNotice?.isForcedFinish.getOrCrash() == false,
                  title: state.appNotice?.title.getOrCrash() ?? "",
                  description: state.appNotice?.description.getOrCrash(),
                  imageUrl: state.appNotice?.imageUrl.getOrCrash(),
                  negativeButtonText:
                      state.appNotice?.negativeButton?.title.getOrCrash() ?? "",
                  positiveButtonText:
                      state.appNotice?.positiveButton?.title.getOrCrash() ?? "",
                  onClickNegativeButton: () {
                getIt<HiveProvider>()
                    .setAppNoticeNotViewedToday(DateTime.now().toString());
                launchExternalUrl(
                    state.appNotice?.negativeButton?.link.getOrCrash() ??
                        dotenv.env['APP_URL_HOST'] ??
                        "");
                if(state.appNotice?.isForcedFinish.getOrCrash() == true) {
                  exitAppForced();
                } else {
                  context.pop();
                }
              }, onClickPositiveButton: () {
                getIt<HiveProvider>()
                    .setAppNoticeNotViewedToday(DateTime.now().toString());
                launchExternalUrl(
                    state.appNotice?.positiveButton?.link.getOrCrash() ??
                        dotenv.env['APP_URL_HOST'] ??
                        "");
                if(state.appNotice?.isForcedFinish.getOrCrash() == true) {
                  exitAppForced();
                } else {
                  context.pop();
                }
              }, onClickCloseButton: () {
                getIt<HiveProvider>()
                    .setAppNoticeNotViewedToday(DateTime.now().toString());
              });
              isShowAppNoticeBottomSheet = true;
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
        child: CommonScaffold(
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

  // Future<void> initDeepLinks() async {
  //   _appLinks = AppLinks();
  //
  //   // Check initial link if app was in cold state (terminated)
  //   final appLink = await _appLinks.getInitialAppLink();
  //   if (appLink != null) {
  //     debugPrint('getInitialAppLink: $appLink');
  //     openAppLink(appLink);
  //   }
  //
  //   // Handle link when app is in warm state (front or background)
  //   _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
  //     debugPrint('onAppLink: $uri');
  //     openAppLink(uri);
  //   });
  // }
  //
  // void openAppLink(Uri uri) {
  //   context.pushNamed(uri.fragment);
  // }

  _refresh() {
    _showLoading();
  }
}
