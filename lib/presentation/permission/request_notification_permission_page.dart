import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/permission/permission_actor/permission_actor_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/constants.dart';

class RequestNotificationPermissionPage extends StatelessWidget {
  const RequestNotificationPermissionPage({
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
              permissionNotificationGrantedOrDenied: () {
                context
                    .read<PermissionActorBloc>()
                    .add(const PermissionActorEvent.permissionHandled());
                goToLocationPermissionPage(context);
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
                      bottom: Constants.kSpacing * 2,
                    ),
                    child: Text(
                      "알림을 받고 함께 타보세요!",
                      textAlign: TextAlign.start,
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppStyle.white,
                        height: 1.4,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: Constants.kSpacing,
                      ),
                      child: Image.asset(
                        "assets/images/permission/permission_push.webp",
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
                            onTap: () => goToLocationPermissionPage(context),
                          ),
                        ),
                        const SizedBox(width: Constants.kSpacing),
                        Expanded(
                          flex: 2,
                          child: CommonButton(
                            text: "허용하고 알림 받기",
                            onTap: () {
                              context.read<PermissionActorBloc>().add(
                                    const PermissionActorEvent
                                        .requestNotificationPermission(),
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

  void goToLocationPermissionPage(BuildContext context) {
    // context.pop();
    // context.push('/locationPermission');
    context.pushReplacement('/locationPermission');
  }
}
