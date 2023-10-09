// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}

class ConfirmPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ConfirmPassword(String input) {
    return ConfirmPassword._(right(input));
  }

  const ConfirmPassword._(this.value);
}

class UserNickname extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserNickname(String input) {
    return UserNickname._(right(input));
  }

  const UserNickname._(this.value);
}

class UserJoinedAt extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory UserJoinedAt(DateTime input) {
    return UserJoinedAt._(right(input));
  }

  const UserJoinedAt._(this.value);
}

class UserGender extends ValueObject<int> {
  // NONE = 0
  // MALE = 1
  // FEMALE = 2
  // ALL = 3
  @override
  final Either<ValueFailure<int>, int> value;

  factory UserGender(int input) {
    return UserGender._(right(input));
  }

  const UserGender._(this.value);
}

class UserProfileImage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserProfileImage(String input) {
    return UserProfileImage._(right(input));
  }

  const UserProfileImage._(this.value);
}
