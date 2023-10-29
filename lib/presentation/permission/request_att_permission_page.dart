import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/permission/permission_actor/permission_actor_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/constants.dart';

class RequestAttPermissionPage extends StatelessWidget {
  const RequestAttPermissionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<PermissionActorBloc>()
        ..add(
          const PermissionActorEvent.requestAttPermission(),
        ),
      child: Scaffold(
        backgroundColor: AppStyle.background,
        body: BlocConsumer<PermissionActorBloc, PermissionActorState>(
          listener: (context, state) {
            state.maybeWhen(
              permissionAttGrantedOrDenied: () {
                context
                    .read<PermissionActorBloc>()
                    .add(const PermissionActorEvent.permissionHandled());
                BlocProvider.of<CheckPermissionBloc>(context)
                    .add(const CheckPermissionEvent.checkInitialPermissions());
                context.pop();
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
                      "함께 스키/스노우보드를 타요!",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyMedium?.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppStyle.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Constants.kSpacing,
                      right: Constants.kSpacing,
                      top: Constants.kSpacing,
                    ),
                    child: Text(
                      "'허용'을 누르면 언제든 ㅁㄴㅇㄹㅁㄴㅇㄹ",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyMedium
                          ?.copyWith(fontSize: 12, color: AppStyle.white),
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
}
