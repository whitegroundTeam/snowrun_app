// Package imports:
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';

// Project imports:

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<double>, double> validateRatingRange(double input) {
  if (input <= 5 && input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidRange(failedValue: input, min: 0, max: 5));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(failedValue: input));
  }
}

// Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
//   KtList<T> input,
//   int maxLength,
// ) {
//   if (input.size <= maxLength) {
//     return right(input);
//   } else {
//     return left(
//       ValueFailure.listTooLong(
//         failedValue: input,
//         max: maxLength,
//       ),
//     );
//   }
// }

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNickname(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNickname(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validatePositiveInt(int input) {
  if (input >= 0) {
    return right(input);
  } else {
    return left(ValueFailure.negativeInt(failedValue: input));
  }
}
