import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_loading.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';

class EmailSignUpPage extends StatefulWidget {
  const EmailSignUpPage({super.key});

  @override
  State createState() => EmailSignUpPageState();
}

class EmailSignUpPageState extends State<EmailSignUpPage> {
  final hiveProvider = getIt<HiveProvider>();
  Color selectedColor = Colors.white;
  bool isShowLoading = false;
  final signUpFormBloc = getIt<SignUpFormBloc>();

  @override
  Widget build(BuildContext context) {
    final previewProfileImageHeight = MediaQuery.of(context).size.height / 5;
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignUpFormBloc>(
          create: (context) => signUpFormBloc,
          lazy: false,
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            _hideLoading();
            context.go('/');
          },
        ),
      ],
      child: Scaffold(
        body: BlocConsumer<SignUpFormBloc, SignUpFormState>(
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
                  context.read<AuthBloc>().add(const AuthEvent.checkAuth());
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
                      child: Form(
                        autovalidateMode: state.showErrorMessages
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/webp/email_big.webp',
                                  height: previewProfileImageHeight,
                                  width: previewProfileImageHeight,
                                ),
                              ),
                              const SizedBox(height: 32,),
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
                                    .read<SignUpFormBloc>()
                                    .add(SignUpFormEvent.emailChanged(value)),
                                validator: (_) {
                                  return context
                                      .read<SignUpFormBloc>()
                                      .state
                                      .emailAddress
                                      .value
                                      .fold(
                                        (f) => f.maybeMap(
                                      invalidEmail: (_) {
                                        _hideLoading();
                                        return '유효한 이메일 주소가 아닙니다.';
                                      },
                                      orElse: () => null,
                                    ),
                                        (r) => null,
                                  );
                                },
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
                                    .read<SignUpFormBloc>()
                                    .add(
                                        SignUpFormEvent.passwordChanged(value)),
                                validator: (_) {
                                  return context
                                      .read<SignUpFormBloc>()
                                      .state
                                      .password
                                      .value
                                      .fold(
                                        (f) => f.maybeMap(
                                      shortPassword: (_) {
                                        _hideLoading();
                                        return '비밀번호는 6자 이상 작성해주세요.';
                                      },
                                      orElse: () => null,
                                    ),
                                        (r) => null,
                                  );
                                },
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
                                    .read<SignUpFormBloc>()
                                    .add(SignUpFormEvent.confirmPasswordChanged(
                                        value)),
                                validator: (_) {
                                  final confirmPassword = context
                                      .read<SignUpFormBloc>()
                                      .state
                                      .confirmPassword;
                                  final password = context
                                      .read<SignUpFormBloc>()
                                      .state
                                      .password;
                                  if (confirmPassword.isValid() &&
                                      password.isValid()) {
                                    if (confirmPassword.getOrCrash() !=
                                        password.getOrCrash()) {
                                      _hideLoading();
                                      return "비밀번호가 일치하지 않습니다.";
                                    }
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 56,
                              ),
                              CommonButton(
                                buttonColor: AppStyle.accentColor,
                                isPrimary: true,
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  if (!state.isSubmitting) {
                                    _showLoading();
                                    context.read<SignUpFormBloc>().add(
                                          const SignUpFormEvent
                                              .registerWithEmailAndPasswordPressed(),
                                        );
                                  }
                                },
                                text: "스노우런 시작하기!",
                              )
                            ],
                          ),
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

  _showLoading(){
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(!isShowLoading) {
        setState(() {
          isShowLoading = true;
        });
      }
    });
  }

  _hideLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(isShowLoading) {
        setState(() {
          isShowLoading = false;
        });
      }
    });
  }
}
