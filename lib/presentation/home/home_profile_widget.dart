import 'package:animate_do/animate_do.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_loading.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/edit_profile_image_page/edit_profile_image_page.dart';

class HomeProfileWidget extends StatefulWidget {
  const HomeProfileWidget({super.key});

  @override
  State createState() => HomeProfileWidgetState();
}

class HomeProfileWidgetState extends State<HomeProfileWidget> {
  bool isShowLoading = false;

  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 6;
    const textAreaHeight = 40;
    return SliverToBoxAdapter(
      child: MultiBlocProvider(
        providers: [
          BlocListener<AuthBloc, AuthState>(
            bloc: context.read<AuthBloc>(),
            listener: (context, state) {
              if (state.status == AuthStatus.authenticated ||
                  state.status == AuthStatus.unauthenticated) {
                _hideLoading();
              } else {
                _showLoading();
              }
            },
          ),
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>(),
          builder: (context, authState) {
            final isAuthenticated = authState.user != null;
            return Stack(
              children: [
                Visibility(
                  visible: !isShowLoading,
                  child: Column(
                    children: [
                      BounceInUp(
                        duration: const Duration(milliseconds: 1000),
                        delay: const Duration(milliseconds: 500),
                        child: isAuthenticated &&
                                authState.user?.image.getOrCrash().isNotEmpty ==
                                    true
                            ? CommonDetector(
                                needAuth: true,
                                onTap: () {
                                  EditProfileImagePage.pushEditProfileImagePage(
                                      context, onResult: () {
                                    _showLoading();
                                    context
                                        .read<AuthBloc>()
                                        .add(const AuthEvent.checkAuth());
                                  });
                                },
                                child: Hero(
                                  tag: "profileImage",
                                  child: Center(
                                    child: CommonNetworkImage(
                                        height: previewProfileImageHeight,
                                        width: previewProfileImageHeight,
                                        imageBackgroundColor:
                                            AppStyle.transparent,
                                        imageUrl: authState.user?.image
                                                .getOrCrash() ??
                                            ""),
                                  ),
                                ),
                              )
                            : CommonDetector(
                                needAuth: true,
                                onTap: () {
                                  EditProfileImagePage.pushEditProfileImagePage(
                                      context, onResult: () {
                                    _showLoading();
                                    context
                                        .read<AuthBloc>()
                                        .add(const AuthEvent.checkAuth());
                                  });
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
                                          color:
                                              AppStyle.white.withOpacity(0.7),
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
                                                  color:
                                                      AppStyle.actionIconColor,
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
                      Container(
                        height: 40,
                        padding: const EdgeInsets.only(
                          top: 16,
                        ),
                        child: isAuthenticated
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
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: isShowLoading,
                  child: Container(
                    height: previewProfileImageHeight + textAreaHeight,
                    color: AppStyle.background,
                    child: const CommonLoading(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  _showLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isShowLoading) {
        setState(() {
          isShowLoading = true;
        });
      }
    });
  }

  _hideLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isShowLoading) {
        setState(() {
          isShowLoading = false;
        });
      }
    });
  }
}
