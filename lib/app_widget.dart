import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:app_links/app_links.dart';
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
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/toast/toast_bloc.dart';
import 'package:snowrun_app/routes/router.dart';

@pragma('vm:entry-point')
void startCallback() {
  // The setTaskHandler function must be called to handle the task in the background.
  FlutterForegroundTask.setTaskHandler(ForegroundTaskHandler());
}

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
  void initState() {
    super.initState();
    // _requestPermissionForAndroid();
    _initForegroundTask();
    Future.delayed(const Duration(milliseconds: 1000), () {
      FlutterNativeSplash.remove();
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
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

    // "android.permission.SYSTEM_ALERT_WINDOW" permission must be granted for
    // onNotificationPressed function to be called.
    //
    // When the notification is pressed while permission is denied,
    // the onNotificationPressed function is not called and the app opens.
    //
    // If you do not use the onNotificationPressed or launchApp function,
    // you do not need to write this code.
    if (!await FlutterForegroundTask.canDrawOverlays) {
      // This function requires `android.permission.SYSTEM_ALERT_WINDOW` permission.
      await FlutterForegroundTask.openSystemAlertWindowSettings();
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

  Future<bool> _startForegroundTask(Function? startCallback) async {
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
        notificationTitle: 'Foreground Service is running',
        notificationText: 'Tap to return to the app',
        callback: startCallback,
      );
    }
  }

  void _initForegroundTask() {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'foreground_service',
        channelName: 'Foreground Service Notification',
        channelDescription:
            'This notification appears when the foreground service is running.',
        channelImportance: NotificationChannelImportance.LOW,
        priority: NotificationPriority.LOW,
        iconData: const NotificationIconData(
          resType: ResourceType.mipmap,
          resPrefix: ResourcePrefix.ic,
          name: 'launcher',
        ),
        buttons: [
          const NotificationButton(id: 'sendButton', text: 'Send'),
          const NotificationButton(id: 'testButton', text: 'Test'),
        ],
      ),
      iosNotificationOptions: const IOSNotificationOptions(
        showNotification: true,
        playSound: false,
      ),
      foregroundTaskOptions: const ForegroundTaskOptions(
        interval: 5000,
        isOnceEvent: false,
        autoRunOnBoot: true,
        allowWakeLock: true,
        allowWifiLock: true,
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
}
