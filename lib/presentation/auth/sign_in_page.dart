import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:snowrun_app/application/permission/check_permission/check_permission_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/domain/auth/auth_method.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/appbar/underline_text.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/common_loading.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/home/home_page.dart';
import 'package:snowrun_app/presentation/permission/request_notification_permission_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State createState() => SignInPageState();

  static goSignInPage(BuildContext context) {
    context.go(
      '/signIn',
    );
  }

  static pushSignInPage(BuildContext context, {Function? onResult}) {
    context
        .push(
          '/signIn',
        )
        .then((value) => onResult?.call());
  }
}

class SignInPageState extends State<SignInPage> {
  final hiveProvider = getIt<HiveProvider>();
  Color selectedColor = Colors.white;
  bool isShowLoading = false;
  final signInFormBloc = getIt<SignInFormBloc>();
  final checkPermissionBloc = getIt<CheckPermissionBloc>();

  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 4;
    final recentlySignInMethod =
        AuthMethod.findByName(name: hiveProvider.getRecentlySignInMethod());

    bool isIos = Platform.isIOS;

    final emailSignInButton = CommonButton(
      onTap: () {
        context.push("/emailSignInPage");
      },
      text: "이메일로 로그인하기",
      iconPath: 'assets/webp/email.webp',
      iconHeroTag: "emailSignInTag",
    );

    final appleSignInButton = CommonButton(
      textColor: AppStyle.black,
      iconColor: AppStyle.black,
      buttonColor: AppStyle.white,
      iconPath: 'assets/webp/apple_logo.webp',
      text: "애플로 로그인 하기",
      onTap: () {
        _showLoading();
        signInFormBloc.add(const SignInFormEvent.signWithApplePressed());
      },
    );

    final googleSignInButton = CommonButton(
      iconPath: 'assets/webp/google_logo.webp',
      text: "구글로 로그인 하기",
      onTap: () {
        _showLoading();
        signInFormBloc.add(const SignInFormEvent.signWithGooglePressed());
      },
    );

    Widget? recentlySignInMethodButton;
    List<Widget> otherSignInMethodButtons = [];
    if (recentlySignInMethod == AuthMethod.email) {
      recentlySignInMethodButton = emailSignInButton;
      if (isIos) {
        otherSignInMethodButtons = [appleSignInButton, googleSignInButton];
      } else {
        otherSignInMethodButtons = [googleSignInButton];
      }
    } else if (recentlySignInMethod == AuthMethod.apple) {
      if (isIos) {
        recentlySignInMethodButton = appleSignInButton;
      }
      otherSignInMethodButtons = [googleSignInButton, emailSignInButton];
    } else if (recentlySignInMethod == AuthMethod.google) {
      recentlySignInMethodButton = googleSignInButton;
      if (isIos) {
        otherSignInMethodButtons = [appleSignInButton, emailSignInButton];
      } else {
        otherSignInMethodButtons = [emailSignInButton];
      }
    }

    if (recentlySignInMethodButton == null) {
      if (isIos) {
        otherSignInMethodButtons = [
          googleSignInButton,
          appleSignInButton,
          emailSignInButton
        ];
      } else {
        otherSignInMethodButtons = [googleSignInButton, emailSignInButton];
      }
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider<SignInFormBloc>(
          create: (context) => signInFormBloc,
          lazy: false,
        ),
        BlocProvider<CheckPermissionBloc>(
            create: (context) => checkPermissionBloc),
        BlocListener<CheckPermissionBloc, CheckPermissionState>(
          bloc: checkPermissionBloc,
          listenWhen: (p, c) {
            debugPrint('[CheckPermissionBloc Listener] State Changed $p to $c');
            return p != c;
          },
          listener: (context, state) {
            state.map(
              initPermissionsNeeded: (e) {
                RequestNotificationPermissionPage
                    .goRequestNotificationPermissionPage(context);
              },
              initPermissionsUnNeeded: (e) {
                // setupInteractedMessageTerminated();
                // setupInteractedDynamicLinkTerminated();

                FirebaseMessaging.instance.getToken().then((token) {
                  if (token?.isNotEmpty == true) {
                    context
                        .read<UserBloc>()
                        .add(UserEvent.savePushToken(token ?? ""));
                  }
                });

                HomePage.goHomePage(context, needRefresh: true);
              },
              initial: (e) {},
            );
          },
        ),
      ],
      child: Scaffold(
        body: BlocConsumer<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  _hideLoading();
                  showToast(
                    context,
                    failure.map(
                      cancelledByUser: (e) => "취소하셨습니다.",
                      serverError: (e) => "알 수 없는 에러가 발생하였습니다.",
                      emailAlreadyInUse: (e) => "이미 사용중인 이메일입니다.",
                      invalidEmailAndPasswordCombination: (e) =>
                          "아이디 혹은 패스워드가 잘못되었습니다.",
                      isNotExistUser: (e) => "이미 존재하는 사용자입니다.",
                    ),
                  );
                },
                (_) {
                  context
                      .read<CheckPermissionBloc>()
                      .add(const CheckPermissionEvent.checkInitialPermissions());
                },
              ),
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                CustomScrollView(
                  physics: bouncingScrollPhysics,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 24, right: 24, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/webp/snow_ball_white.webp',
                                height: previewProfileImageHeight,
                                width: previewProfileImageHeight,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            if (recentlySignInMethodButton != null) ...[
                              const TitleText(
                                title: "가장 최근에 사용한",
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              recentlySignInMethodButton,
                            ],
                            ...otherSignInMethodButtons
                                .map(
                                  (e) => Column(
                                    children: [
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      e,
                                    ],
                                  ),
                                )
                                .toList(),
                            const SizedBox(
                              height: 36,
                            ),
                            Center(
                              child: CommonDetector(
                                onTap: () {
                                  context.push("/signUp");
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 12,
                                  ),
                                  child: UnderlineText(
                                    TitleText(
                                      title: "이메일로 가입하기",
                                      fontSize: 14,
                                      color: AppStyle.white,
                                    ),
                                    AppStyle.white,
                                    width: 1,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 56,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Visibility(
                    visible: isShowLoading,
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
