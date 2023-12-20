enum Gender {
  male,
  female,
}

extension GenderExtension on Gender {
  bool get isMale {
    return this == Gender.male;
  }
}
