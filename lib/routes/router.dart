import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/presentation/riding/riding_page.dart';
import 'package:snowrun_app/presentation/auth/email_sign_in_page.dart';
import 'package:snowrun_app/presentation/auth/email_sign_up_page.dart';
import 'package:snowrun_app/presentation/core/webview/common_webview.dart';
import 'package:snowrun_app/presentation/edit_profile_image_page/edit_profile_image_page.dart';
import 'package:snowrun_app/presentation/home/home_page.dart';
import 'package:snowrun_app/presentation/auth/sign_in_page.dart';
import 'package:snowrun_app/presentation/permission/request_att_permission_page.dart';
import 'package:snowrun_app/presentation/permission/request_location_permission_page.dart';
import 'package:snowrun_app/presentation/permission/request_notification_permission_page.dart';
import 'package:snowrun_app/presentation/record/recording_page.dart';
import 'package:snowrun_app/presentation/record/result_page.dart';
import 'package:snowrun_app/presentation/riding/riding_dashboard_page.dart';
import 'package:snowrun_app/presentation/setting/setting_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/editProfileImage',
      builder: (BuildContext context, GoRouterState state) {
        return const EditProfileImagePage();
      },
    ),
    GoRoute(
      path: '/recording',
      builder: (BuildContext context, GoRouterState state) {
        return const RecordingPage();
      },
    ),
    GoRoute(
      path: '/riding',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, int> extra = state.extra as Map<String, int>;
        final int ridingRoomId = extra['ridingRoomId'] ?? -1;
        return RidingPage(ridingRoomId: ridingRoomId);
      },
    ),
    GoRoute(
      path: '/ridingDashboard',
      builder: (BuildContext context, GoRouterState state) {
        // final Map<String, String> extra = state.extra as Map<String, String>;
        // final String url = extra['url']!;
        // final String? title = extra['title'];
        return const RidingDashboardPage();
      },
    ),
    GoRoute(
      path: '/result',
      builder: (BuildContext context, GoRouterState state) {
        return const ResultPage();
      },
    ),
    GoRoute(
      path: '/signIn',
      builder: (BuildContext context, GoRouterState state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      path: '/emailSignInPage',
      builder: (BuildContext context, GoRouterState state) {
        return const EmailSignInPage();
      },
    ),
    GoRoute(
      path: '/signUp',
      builder: (BuildContext context, GoRouterState state) {
        return const EmailSignUpPage();
      },
    ),
    GoRoute(
      path: '/setting',
      builder: (BuildContext context, GoRouterState state) {
        return const SettingPage();
      },
    ),
    GoRoute(
      path: '/attPermission',
      builder: (BuildContext context, GoRouterState state) {
        return const RequestAttPermissionPage();
      },
    ),
    GoRoute(
      path: '/locationPermission',
      builder: (BuildContext context, GoRouterState state) {
        return const RequestLocationPermissionPage();
      },
    ),
    GoRoute(
      path: '/notificationPermission',
      builder: (BuildContext context, GoRouterState state) {
        return const RequestNotificationPermissionPage();
      },
    ),
    GoRoute(
      path: '/webview',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, String> extra = state.extra as Map<String, String>;
        final String url = extra['url'] ?? "";
        final String? title = extra['title'];
        return CommonWebViewPage(url: url, title: title);
      },
    ),
  ],
);
