import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/permission/permission_actor/permission_actor_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/constants.dart';
import 'package:snowrun_app/presentation/home/home_page.dart';

class RequestLocationPermissionPage extends StatelessWidget {
  const RequestLocationPermissionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final imageHeight = MediaQuery.of(context).size.height / 3;
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<PermissionActorBloc>(),
      child: Scaffold(
        backgroundColor: AppStyle.background,
        body: BlocConsumer<PermissionActorBloc, PermissionActorState>(
          listener: (context, state) {
            state.maybeWhen(
              permissionLocationGrantedOrDenied: () {
                context
                    .read<PermissionActorBloc>()
                    .add(const PermissionActorEvent.permissionHandled());
                goToRequestAttPermissionPage(context);
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Constants.kSpacing,
                      right: Constants.kSpacing,
                      top: Constants.kSpacing * 3,
                    ),
                    child: Text(
                      "라이딩의 재미를 더 느껴보실래요?",
                      textAlign: TextAlign.start,
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppStyle.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Constants.kSpacing,
                      right: Constants.kSpacing,
                      top: Constants.kSpacing,
                    ),
                    child: Text(
                      "'허용'을 누르면 라이딩 상황을 알 수 있고 공유할 수 있어요!",
                      textAlign: TextAlign.start,
                      style: textTheme.bodyMedium?.copyWith(
                        color: AppStyle.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: Constants.kSpacing,
                        vertical: Constants.kSpacing * 3,
                      ),
                      child: Image.asset(
                        "assets/images/permission/permission_location.webp",
                        width: imageHeight,
                        height: imageHeight,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Constants.kSpacing,
                      vertical: Constants.kSpacing,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: CommonButton(
                            text: "나중에",
                            onTap: () => goToRequestAttPermissionPage(context),
                          ),
                        ),
                        const SizedBox(width: Constants.kSpacing),
                        Expanded(
                          flex: 2,
                          child: CommonButton(
                            text: "위치 정보 허용하기",
                            onTap: () {
                              context.read<PermissionActorBloc>().add(
                                    const PermissionActorEvent
                                        .requestLocationPermission(),
                                  );
                            },
                          ),
                        ),
                      ],
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

  void goToRequestAttPermissionPage(BuildContext context) {
    if (Platform.isIOS) {
      // context.pop();
      // context.push('/attPermission');
      context.pushReplacement('/attPermission');
    } else {
      // BlocProvider.of<CheckPermissionBloc>(context)
      //     .add(const CheckPermissionEvent.checkInitialPermissions());
      // context.pop();
      HomePage.goHomePage(context, needRefresh: true);
    }
  }
}
