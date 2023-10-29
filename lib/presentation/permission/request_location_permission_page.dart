import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/permission/permission_actor/permission_actor_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/constants.dart';

class RequestLocationPermissionPage extends StatelessWidget {
  const RequestLocationPermissionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                      "오늘의 날씨 정보를\n자동으로 기록하고 싶나요?",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
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
                      "'허용'을 누르면 스타일 인증샷에 날씨 정보가 자동 기록돼요",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyMedium,
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
                        "assets/png/splash_app_icon.png",
                        fit: BoxFit.cover,
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
      BlocProvider.of<CheckPermissionBloc>(context)
          .add(const CheckPermissionEvent.checkInitialPermissions());
      context.pop();
    }
  }
}
