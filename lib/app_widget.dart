import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/app_info/app_info_bloc.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/toast/toast_bloc.dart';
import 'package:snowrun_app/routes/router.dart';

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
  final appInfoBloc = getIt<AppInfoBloc>();

  @override
  void initState() {
    super.initState();
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
              BlocProvider<AppInfoBloc>(create: (context) => appInfoBloc..add(const AppInfoEvent.getAppInfo())),
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
                create: (context) => authBloc..add(const AuthEvent.checkAuth()),
                lazy: false,
              ),
            ],
            child: Material(
              color: AppStyle.background,
              child: Stack(
                children: [
                  child == null
                      ? const SizedBox()
                      : SafeArea(top: false, child: child),
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
}
