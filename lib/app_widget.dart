import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:app_links/app_links.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/app_info/app_info_bloc.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/draggable/draggable_bloc.dart';
import 'package:snowrun_app/application/location/location_bloc.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/foreground_task_handler.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/toast/toast_bloc.dart';
import 'package:snowrun_app/routes/router.dart';
import 'package:geolocator/geolocator.dart' as geolocator;

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  GlobalKey<CommonToastState> commonToastKey = GlobalKey<CommonToastState>();
  CommonToast? commonToast;
  final toastBloc = getIt<ToastBloc>();
  final authBloc = getIt<AuthBloc>();
  final draggableBloc = getIt<DraggableBloc>();
  final locationBloc = getIt<LocationBloc>();
  final appInfoBloc = getIt<AppInfoBloc>();
  final checkPermissionBloc = getIt<CheckPermissionBloc>();
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  ReceivePort? _receivePort;

  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      FlutterNativeSplash.remove();
    });
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppStyle.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: AppStyle.background,
        systemNavigationBarColor: AppStyle.background,
        systemNavigationBarIconBrightness: Brightness.light,
      ));

      commonToast = CommonToast(
        key: commonToastKey,
      );
    });
    initDeepLinks();
  }

  @override
  void dispose() {
    _closeReceivePort();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: AppStyle.themeData(context),
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<UserBloc>(create: (context) => getIt<UserBloc>()),
              BlocProvider<DraggableBloc>(
                create: (context) => draggableBloc,
              ),
              BlocProvider<LocationBloc>(
                create: (context) => locationBloc,
              ),
              BlocListener<LocationBloc, LocationState>(
                bloc: locationBloc,
                listener: (context, state) async {
                  // if(state.status == LocationStatus.successStartRefreshLocation) {
                  //   _checkLocationPermissionAndStratGetLocation();
                  // }
                  if (state.status ==
                      LocationStatus.successStartRefreshLocation) {
                    if (!state.isInit) {
                      await _requestPermissionForAndroid();
                      await _initForegroundTask();
                    }
                    await startForegroundTask(() {});
                  } else if (state.status ==
                      LocationStatus.successStopRefreshLocation) {
                    _stopForegroundTask();
                  }
                },
              ),
              BlocProvider<AppInfoBloc>(create: (context) => appInfoBloc),
              BlocProvider<ToastBloc>(
                create: (context) => toastBloc,
                lazy: false,
              ),
              BlocListener<ToastBloc, ToastState>(
                bloc: toastBloc,
                listener: (context, state) {
                  commonToastKey.currentState?.updateMessage(state.message);
                },
              ),
              BlocProvider<AuthBloc>(
                create: (context) => authBloc,
                lazy: false,
              ),
            ],
            child: Material(
              color: AppStyle.background,
              child: WithForegroundTask(
                child: Stack(
                  children: [
                    child == null
                        ? const SizedBox()
                        : SafeArea(
                            top: false,
                            child: child,
                          ),
                    Positioned(
                      bottom: 72,
                      right: 0,
                      left: 0,
                      child: commonToast ?? const SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
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

  Future<void> _requestPermissionForAndroid() async {
    if (!Platform.isAndroid) {
      return;
    }

    if (!await FlutterForegroundTask.canDrawOverlays) {
      // if (!mounted) return;
      // await FlutterForegroundTask.openSystemAlertWindowSettings();
      if (!mounted) return;
      showToast(context, "다른 앱 위에 SnowRun앱을 표시해주시면 좀 더 쉽게 위치 공유를 할 수 있어요 😆");
      await FlutterForegroundTask.openSystemAlertWindowSettings();

      // await showCommonDialog(context,
      //     buttonText: "설정으로 이동",
      //     title: "다른 앱 위에 SnowRun앱을 표시해주시면 좀 더 쉽게 위치 공유를 할 수 있어요 😆",
      //     negativeButtonText: "위치 갱신 하지 않기", onPressedButton: () async {
      //   await FlutterForegroundTask.openSystemAlertWindowSettings();
      //   if (!mounted) return;
      //   context.pop();
      // }, onPressedNegativeButton: () {
      //   context.pop();
      // });
    }

    // Android 12 or higher, there are restrictions on starting a foreground service.
    //
    // To restart the service on device reboot or unexpected problem, you need to allow below permission.
    if (!await FlutterForegroundTask.isIgnoringBatteryOptimizations) {
      // This function requires `android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS` permission.
      await FlutterForegroundTask.requestIgnoreBatteryOptimization();
    }

    // Android 13 and higher, you need to allow notification permission to expose foreground service notification.
    final NotificationPermission notificationPermissionStatus =
        await FlutterForegroundTask.checkNotificationPermission();
    if (notificationPermissionStatus != NotificationPermission.granted) {
      await FlutterForegroundTask.requestNotificationPermission();
    }
  }

  Future<bool> startForegroundTask(Function? startCallback) async {
    // You can save data using the saveData function.
    await FlutterForegroundTask.saveData(key: 'customData', value: 'hello');

    // Register the receivePort before starting the service.
    final ReceivePort? receivePort = FlutterForegroundTask.receivePort;
    final bool isRegistered = _registerReceivePort(receivePort);
    if (!isRegistered) {
      debugPrint('Failed to register receivePort!');
      return false;
    }

    if (await FlutterForegroundTask.isRunningService) {
      return FlutterForegroundTask.restartService();
    } else {
      return FlutterForegroundTask.startService(
        notificationTitle: '위치정보를 공유중이에요 😆',
        notificationText: '즐겁고 안전한 겨울 보내세요!',
        callback: startCallback,
      );
    }
  }

  Future<bool> _stopForegroundTask() {
    return FlutterForegroundTask.stopService();
  }

  Future<void> _initForegroundTask() async {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'shareLocation',
        channelName: 'shareLocation',
        channelDescription: 'shareLocation',
        channelImportance: NotificationChannelImportance.LOW,
        priority: NotificationPriority.LOW,
        iconData: const NotificationIconData(
          resType: ResourceType.mipmap,
          resPrefix: ResourcePrefix.ic,
          name: 'launcher',
          // resType: ResourceType.mipmap,
          // resPrefix: ResourcePrefix.ic,
          // name: 'launcher',
        ),
        buttons: [
          // const NotificationButton(id: 'sendButton', text: 'Send'),
          // const NotificationButton(id: 'd', text: 'Test'),
        ],
      ),
      iosNotificationOptions: const IOSNotificationOptions(
        showNotification: true,
        playSound: false,
      ),
      foregroundTaskOptions: const ForegroundTaskOptions(
        interval: 5000,
        isOnceEvent: false,
        // autoRunOnBoot: true,
        // allowWakeLock: true,
        // allowWifiLock: true,
      ),
    );
  }

  bool _registerReceivePort(ReceivePort? newReceivePort) {
    if (newReceivePort == null) {
      return false;
    }

    _closeReceivePort();

    _receivePort = newReceivePort;
    _receivePort?.listen((data) {
      if (data is int) {
        debugPrint('eventCount: $data');
      } else if (data is String) {
        if (data == 'onNotificationPressed') {
          Navigator.of(context).pushNamed('/resume-route');
        }
      } else if (data is DateTime) {
        debugPrint('timestamp: ${data.toString()}');
      }
    });

    return _receivePort != null;
  }

  void _closeReceivePort() {
    _receivePort?.close();
    _receivePort = null;
  }

  _checkLocationPermissionAndStratGetLocation() async {
    if (!await geolocator.Geolocator.isLocationServiceEnabled()) {
      _showOpenSettingDialog();
    }

    final checkedPermission = await geolocator.Geolocator.requestPermission();

    if (checkedPermission == geolocator.LocationPermission.always ||
        checkedPermission == geolocator.LocationPermission.whileInUse) {
      if (!mounted) return;
      locationBloc.add(const LocationEvent.getCurrentLocation());
    } else {
      _showOpenSettingDialog();
    }
  }

  _showOpenSettingDialog() async {
    if (!mounted) return;
    await showCommonDialog(context,
        buttonText: "설정으로 이동",
        title:
            "현재 위치에서 주소를 검색하려면 위치 권한을 활성화 해야합니다.\n위치 공유를 그만하고 싶다면 앱에서 종료해주세요.",
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
