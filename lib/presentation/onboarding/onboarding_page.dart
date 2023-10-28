import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/auth/widget/common_button.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/constants.dart';
import 'package:snowrun_app/presentation/core/squarebars.dart';
import 'package:snowrun_app/presentation/onboarding/model/onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  State createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController();
  int currentPosition = 0;

  @override
  void initState() {
    super.initState();
  }

  void _goToHome(BuildContext context) {
    showSquareBar(context, "", onDone: () {
      Future.delayed(const Duration(milliseconds: 250), () {
        // context.router.replace(HomeRoute());
        // context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
      });
    });
  }

  bool get _isLastPage =>
      currentPosition + 1 == OnboardingContent.onboardingContents.length;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppStyle.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: CommonAppBar(
          actionButtonText: "건너뛰기",
          onClickActionButton: () {
            final lastPage = OnboardingContent.onboardingContents.length - 1;
            pageController.animateToPage(
              lastPage,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: Constants.kSpacing / 2,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: OnboardingContent.onboardingContents.length,
                effect: const WormEffect(
                  spacing: 16.0,
                  dotWidth: 6.0,
                  dotHeight: 6.0,
                  activeDotColor: Colors.black,
                ),
                onDotClicked: (index) {},
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: OnboardingContent.onboardingContents.length,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                itemBuilder: (context, index) {
                  final onboardingContent =
                      OnboardingContent.onboardingContents[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      children: [
                        Text(
                          onboardingContent.title,
                          textAlign: TextAlign.center,
                          style: textTheme.bodyMedium?.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Expanded(
                          child: Image.asset(
                            onboardingContent.imagePath,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                onPageChanged: (index) {
                  setState(() {
                    currentPosition = index;
                  });
                },
              ),
            ),
            Visibility(
              visible: _isLastPage,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: FadeIn(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Constants.kSpacing * 2,
                    vertical: Constants.kSpacing,
                  ),
                  child: CommonButton(
                      text: "시작하기!",
                      onTap: () {
                        _goToHome(context);
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
