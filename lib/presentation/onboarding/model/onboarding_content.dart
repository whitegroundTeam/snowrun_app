class OnboardingContent {
  final String title;
  final String imagePath;

  OnboardingContent(this.title, this.imagePath);

  static List<OnboardingContent> onboardingContents = [
    OnboardingContent(
      "마음에드는 눈송이를 선택하고, 서로를 언제든 확인해요!",
      "assets/png/app_icon_256.png",
    ),
    OnboardingContent(
      "올해 다 타셨다구요? 비시즌 장비보관으로 집까지 몸만 가세요!",
      "assets/images/onboarding/onboarding5_hero.png",
    ),
  ];
}
