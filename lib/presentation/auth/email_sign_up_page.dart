import 'dart:ui';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/toast/toast_bloc.dart';

class EmailSignUpPage extends StatefulWidget {
  const EmailSignUpPage({super.key});

  @override
  State createState() => EmailSignUpPageState();
}

class EmailSignUpPageState extends State<EmailSignUpPage> {
  final hiveProvider = getIt<HiveProvider>();
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 4;
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  showToast(
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
                  context.go('/home');
                  // context.go("/home", replace: true);
                  // context.router.popUntilRoot();
                  // context.router.replace(HomeRoute(initialTab: 0));
                  // context
                  //     .read<AuthBloc>()
                  //     .add(const AuthEvent.authCheckRequested());
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
                    const CommonAppBar(
                      isSliver: true,
                      appBarType: AppBarType.back,
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/webp/email.webp',
                                height: previewProfileImageHeight,
                                width: previewProfileImageHeight,
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: AppStyle.white,
                              decoration: InputDecoration(
                                hintText: '이메일',
                                hintStyle: const TextStyle(
                                  color: AppStyle.secondaryTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppStyle.white, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppStyle.secondaryBackground,
                                      width: 4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: const TextStyle(
                                color: AppStyle.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              autocorrect: false,
                              autofocus: true,
                              onChanged: (value) => context
                                  .read<SignInFormBloc>()
                                  .add(SignInFormEvent.emailChanged(value)),
                              validator: (_) => context
                                  .read<SignInFormBloc>()
                                  .state
                                  .emailAddress
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      invalidEmail: (_) => '유효한 이메일 주소가 아닙니다.',
                                      orElse: () => null,
                                    ),
                                    (r) => null,
                                  ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              cursorColor: AppStyle.white,
                              decoration: InputDecoration(
                                hintText: '비밀번호',
                                hintStyle: const TextStyle(
                                  color: AppStyle.secondaryTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppStyle.white, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppStyle.secondaryBackground,
                                      width: 4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: const TextStyle(
                                color: AppStyle.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              autocorrect: false,
                              onChanged: (value) => context
                                  .read<SignInFormBloc>()
                                  .add(SignInFormEvent.passwordChanged(value)),
                              validator: (_) => context
                                  .read<SignInFormBloc>()
                                  .state
                                  .password
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      shortPassword: (_) =>
                                          '비밀번호는 6자 이상 작성해주세요.',
                                      orElse: () => null,
                                    ),
                                    (r) => null,
                                  ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              cursorColor: AppStyle.white,
                              decoration: InputDecoration(
                                hintText: '비밀번호 확인',
                                hintStyle: const TextStyle(
                                  color: AppStyle.secondaryTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                                border: const OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppStyle.white, width: 2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppStyle.secondaryBackground,
                                      width: 4),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: const TextStyle(
                                color: AppStyle.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              autocorrect: false,
                              onChanged: (value) => context
                                  .read<SignInFormBloc>()
                                  .add(SignInFormEvent.passwordChanged(value)),
                              validator: (_) => context
                                  .read<SignInFormBloc>()
                                  .state
                                  .password
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      shortPassword: (_) =>
                                          '비밀번호는 6자 이상 작성해주세요.',
                                      orElse: () => null,
                                    ),
                                    (r) => null,
                                  ),
                            ),
                            const SizedBox(
                              height: 56,
                            ),
                            CommonButton(
                              buttonColor: AppStyle.accentColor,
                              isPrimary: true,
                              onTap: () {
                                context.go("/");
                              },
                              text: "스노우런 시작하기!",
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}