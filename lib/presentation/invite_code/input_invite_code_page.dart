import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/app_info/app_info_bloc.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/auth/sign_in_page.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/common_loading.dart';
import 'package:snowrun_app/presentation/core/formatters.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/home/home_page.dart';

class InputInviteCodePage extends StatefulWidget {
  const InputInviteCodePage({super.key});

  @override
  State createState() => InputInviteCodePageState();

  static pushInviteCodesPage(BuildContext context, {Function? onResult}) {
    context
        .push(
          '/inputInviteCodes',
        )
        .then((value) => onResult?.call());
  }
}

class InputInviteCodePageState extends State<InputInviteCodePage> {
  TextEditingController inviteCodeTextController = TextEditingController();
  FocusNode focusNode = FocusNode();
  static const int inviteCodeLength = 30;
  bool isShowLoading = false;

  bool? isValidCode;

  static const titleText = "반갑습니다!";
  static const int titleTextAnimationSpeed = 300;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
          const Duration(
              milliseconds: titleText.length * titleTextAnimationSpeed), () {
        // FocusScope.of(context).requestFocus(focusNode);
        FocusScope.of(context).unfocus();
        focusNode.requestFocus();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    inviteCodeTextController.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppStyle.background,
        body: SizedBox(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: 96,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  titleText,
                                  textStyle: const TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: AppStyle.white,
                                  ),
                                  speed: const Duration(
                                      milliseconds: titleTextAnimationSpeed),
                                ),
                              ],
                              totalRepeatCount: 1,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            FadeIn(
                              delay: const Duration(
                                  milliseconds: titleText.length *
                                      titleTextAnimationSpeed),
                              child: const TitleText(
                                title: "가지고 계신 초대코드를 입력해주세요 😆",
                                fontSize: 16,
                                color: AppStyle.secondaryTextColor,
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            FadeIn(
                              delay: const Duration(
                                  milliseconds: titleText.length *
                                      titleTextAnimationSpeed),
                              child: TextFormField(
                                controller: inviteCodeTextController,
                                keyboardType: TextInputType.text,
                                cursorColor: AppStyle.white,
                                maxLength: inviteCodeLength,
                                focusNode: focusNode,
                                decoration: InputDecoration(
                                  fillColor: AppStyle.background,
                                  counterText:
                                      "${inviteCodeTextController.text.characters.length}/$inviteCodeLength",
                                  counterStyle: const TextStyle(
                                    color: AppStyle.secondaryTextColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  filled: true,
                                  hintText: '',
                                  hintStyle: const TextStyle(
                                    color: AppStyle.secondaryTextColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                  border: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppStyle.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppStyle.secondaryBackground,
                                        width: 2),
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
                                onChanged: (value) {
                                  setState(() {
                                    if (isValidCode == false) {
                                      isValidCode = null;
                                    }
                                  });
                                  return;
                                },
                                validator: (_) {
                                  return '양식을 지켜주세요!';
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: AnimatedOpacity(
                  opacity: inviteCodeTextController.text.isNotEmpty == true
                      ? 1.0
                      : 0,
                  duration: const Duration(milliseconds: 500),
                  child: CommonButton(
                    textColor: isValidCode == null
                        ? AppStyle.white
                        : isValidCode == true
                            ? AppStyle.white
                            : AppStyle.accentColor,
                    iconColor: isValidCode == null
                        ? AppStyle.white
                        : isValidCode == true
                            ? AppStyle.white
                            : AppStyle.accentColor,
                    buttonColor: AppStyle.secondaryBackground,
                    isPrimary: isValidCode == null || isValidCode == true,
                    text: isValidCode == null
                        ? "홈으로 가기"
                        : isValidCode == true
                            ? "홈으로 가기"
                            : "초대코드를 한번 더 확인해주세요!",
                    borderRadius: 0,
                    height: 48,
                    onTap: () async {
                      if (!mounted) return;
                      final inviteCodes = context
                          .read<AppInfoBloc>()
                          .state
                          .appInviteCodes
                          ?.inviteCodes
                          .getOrCrash();
                      final inputInviteCode = inviteCodeTextController.text;
                      if (inviteCodes?.isNotEmpty == true &&
                          inviteCodes?.contains(inputInviteCode) == false) {
                        setState(() {
                          isValidCode = false;
                        });
                      } else {
                        getIt<HiveProvider>()
                            .setInviteCode(inviteCodeTextController.text);
                        setState(() {
                          isValidCode = true;
                        });
                        SignInPage.goSignInPage(context);
                      }
                    },
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Visibility(
                  visible: isShowLoading,
                  child: const CommonLoading(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
