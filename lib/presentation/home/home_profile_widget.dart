import 'package:animate_do/animate_do.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';

class HomeProfileWidget extends StatefulWidget {
  const HomeProfileWidget({super.key});

  @override
  State createState() => HomeProfileWidgetState();
}

class HomeProfileWidgetState extends State<HomeProfileWidget> {
  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 6;
    return SliverToBoxAdapter(
      child: BlocBuilder<AuthBloc, AuthState>(
        bloc: context.read<AuthBloc>(),
        builder: (context, authState) {
          final isAuthenticated = authState.user != null;
          return Column(
            children: [
              BounceInUp(
                duration: const Duration(milliseconds: 1000),
                delay: const Duration(milliseconds: 500),
                child: isAuthenticated &&
                        authState.user?.image.getOrCrash().isNotEmpty == true
                    ? CommonDetector(
                        needAuth: true,
                        onTap: () {
                          context.push('/editProfileImage');
                        },
                        child: Hero(
                          tag: "profileImage",
                          child: Center(
                            child: CommonNetworkImage(
                                height: previewProfileImageHeight,
                                width: previewProfileImageHeight,
                                imageBackgroundColor: AppStyle.transparent,
                                imageUrl:
                                    authState.user?.image.getOrCrash() ?? ""),
                          ),
                        ),
                      )
                    : CommonDetector(
                        needAuth: true,
                        onTap: () {
                          context.push('/editProfileImage');
                        },
                        child: Hero(
                          tag: "profileImage",
                          child: Center(
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/webp/profile_placeholder.webp',
                                  height: previewProfileImageHeight,
                                  width: previewProfileImageHeight,
                                  color: AppStyle.white.withOpacity(0.7),
                                ),
                                const Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  top: 0,
                                  child: Center(
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                          fontSize: 36,
                                          color: AppStyle.actionIconColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
              ),
              const SizedBox(
                height: 16,
              ),
              isAuthenticated
                  ? Text(
                      authState.user?.nickname.getOrCrash() ?? '',
                      style: const TextStyle(
                          fontSize: 24,
                          color: AppStyle.white,
                          fontWeight: FontWeight.bold),
                    )
                  : const Text(
                      "마음에드는 눈송이를 선택해주세요!",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppStyle.secondaryTextColor,
                          fontWeight: FontWeight.bold),
                    ),
            ],
          );
        },
      ),
    );
  }
}
