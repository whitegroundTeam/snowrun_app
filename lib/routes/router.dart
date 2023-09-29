import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/presentation/edit_profile_image_page/edit_profile_image_page.dart';
import 'package:snowrun_app/presentation/home/home_page.dart';
import 'package:snowrun_app/presentation/home/login_page.dart';
import 'package:snowrun_app/presentation/record/recording_page.dart';
import 'package:snowrun_app/presentation/record/result_page.dart';

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
      path: '/result',
      builder: (BuildContext context, GoRouterState state) {
        return const ResultPage();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
  ],
);
