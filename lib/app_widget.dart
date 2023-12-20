import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:app_settings/app_settings.dart';
import 'package:background_location/background_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/app_info/app_info_bloc.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/cart/cart_bloc.dart';
import 'package:snowrun_app/application/draggable/draggable_bloc.dart';
import 'package:snowrun_app/application/location/location_bloc.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/rental_shop/rental_shop_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
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
  final userBloc = getIt<UserBloc>();
  final checkPermissionBloc = getIt<CheckPermissionBloc>();
  late AppLinks _appLinks;

  //TODO : 임시용
  final cartBloc = getIt<CartBloc>();
  final rentalShopBloc = getIt<RentalShopBloc>();


  StreamSubscription<Uri>? _linkSubscription;

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
              //TODO : 임시용
              BlocProvider<CartBloc>(create: (context) => cartBloc),
              BlocProvider<RentalShopBloc>(
                create: (context) => rentalShopBloc
                  ..add(const RentalShopEvent.getRentalShop(
                      rentalShopAccessCode: "123123")),
                lazy: false,
              ),


              BlocProvider<UserBloc>(create: (context) => userBloc),
              BlocProvider<DraggableBloc>(
                create: (context) => draggableBloc,
              ),
              BlocProvider<LocationBloc>(
                create: (context) => locationBloc,
              ),
              BlocListener<LocationBloc, LocationState>(
                bloc: locationBloc,
                listener: (context, state) async {
                  if (state.status ==
                      LocationStatus.successStartRefreshLocation) {
                    await _startBackgroundLocation();
                  } else if (state.status ==
                      LocationStatus.successStopRefreshLocation) {
                    BackgroundLocation.stopLocationService();
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

  _startBackgroundLocation() async {
    // await BackgroundLocation.setAndroidNotification(
    //   title: '위치 정보를 수집중이에요',
    //   message: '',
    //   icon: '@mipmap/ic_launcher',
    // );

    if (!await geolocator.Geolocator.isLocationServiceEnabled()) {
      _showOpenSettingDialog();
    }

    final checkedPermission = await geolocator.Geolocator.requestPermission();

    if (checkedPermission == geolocator.LocationPermission.always ||
        checkedPermission == geolocator.LocationPermission.whileInUse) {
      await BackgroundLocation.setAndroidConfiguration(5000);
      await BackgroundLocation.startLocationService(distanceFilter: 0);
      debugPrint("WTWTWT :: LOLOLO111");
      BackgroundLocation.getLocationUpdates((location) {
        debugPrint("WTWTWT :: LOLOLO222 ${location}");
        double? lat = location.latitude;
        double? lng = location.longitude;
        if(lat != null && lng != null) {
          userBloc.add(UserEvent.updateCurrentLocation(lat,lng));
        }

        // setState(() {
        //   latitude = location.latitude.toString();
        //   longitude = location.longitude.toString();
        //   accuracy = location.accuracy.toString();
        //   altitude = location.altitude.toString();
        //   bearing = location.bearing.toString();
        //   speed = location.speed.toString();
        //   time = DateTime.fromMillisecondsSinceEpoch(
        //       location.time!.toInt())
        //       .toString();
        // });
      });
    } else {
      _showOpenSettingDialog();
    }
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
