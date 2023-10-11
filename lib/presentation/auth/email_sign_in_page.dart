import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/widget/email_auth_button.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/label_text.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class EmailSignInPage extends StatefulWidget {
  const EmailSignInPage({super.key});

  @override
  State createState() => EmailSignInPageState();
}

class EmailSignInPageState extends State<EmailSignInPage> {
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
                            Hero(
                              tag: "emailSignInTag",
                              child: Center(
                                child: Image.asset(
                                  'assets/webp/email.webp',
                                  height: previewProfileImageHeight,
                                  width: previewProfileImageHeight,
                                ),
                              ),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: AppStyle.white,
                              decoration: const InputDecoration(
                                hintText: '이메일',
                                hintStyle: TextStyle(
                                  color: AppStyle.secondaryTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppStyle.white, width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppStyle.secondaryBackground,
                                      width: 1),
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
                              decoration: const InputDecoration(
                                hintText: '비밀번호',
                                hintStyle: TextStyle(
                                  color: AppStyle.secondaryTextColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppStyle.white, width: 2),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppStyle.secondaryBackground,
                                      width: 1),
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
                              isPrimary: true,
                              onTap: () {},
                              text: "로그인 하기",
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

  // TODO : 최근 로그인한 영역 만들고 그 안에 버튼 끼워넣을 수 있게
  // TODO : 나머지는 그냥 아래 쭉 보여주기 1.이메인 2.애플 3.구글

  _buildMember(
      String avatarPath, String name, Color borderColor, String authToken) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: CommonDetector(
        onTap: () async {
          setState(() {
            selectedColor = borderColor;
          });
          hiveProvider.setAuthToken(authToken);
          if (!await Geolocator.isLocationServiceEnabled()) {
            _showOpenSettingDialog();
          }

          final checkedPermission = await Geolocator.requestPermission();
          if (checkedPermission == LocationPermission.always ||
              checkedPermission == LocationPermission.whileInUse) {
            if (!mounted) return;
            context.push("/");
          } else {
            _showOpenSettingDialog();
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: borderColor, width: 8.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                avatarPath,
                width: 72,
                height: 72,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _showOpenSettingDialog() async {
    if (!mounted) return;
    await showCommonDialog(context,
        buttonText: "설정으로 이동",
        title: "현재 위치에서 주소를 검색하려면 위치 권한을 활성화 해야합니다.",
        negativeButtonText: "취소", onPressedButton: () async {
      AppSettings.openAppSettings(type: AppSettingsType.location);
      showToast(
        "위치 권한 허용 후 다시 시도해주세요.",
      );

      if (!mounted) return;
      context.pop();
    }, onPressedNegativeButton: () {
      context.pop();
    });
  }
}
