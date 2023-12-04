import 'dart:typed_data';
import 'dart:ui';

import 'package:intl/intl.dart';
import 'package:snowrun_app/domain/core/errors.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
import 'package:version/version.dart';

abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing [ValueFailure].
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (f) => left(f),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ValueObject<T> && value == other.value);

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'VO($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

class ObjectId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ObjectId(int input) {
    return ObjectId._(right(input));
  }

  const ObjectId._(this.value);
}

class DateTimeVO extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory DateTimeVO(DateTime input) {
    return DateTimeVO._(right(input));
  }

  String format(String format) {
    return DateFormat(format).format(getOrCrash().toLocal());
  }

  const DateTimeVO._(this.value);
}

class CountVO extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory CountVO(int input) {
    return CountVO._(right(input));
  }

  const CountVO._(this.value);
}

class RatioNumberVO extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory RatioNumberVO(int input) {
    return RatioNumberVO._(right(input));
  }

  const RatioNumberVO._(this.value);
}

class AmountVO extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory AmountVO(int input) {
    return AmountVO._(right(input));
  }

  const AmountVO._(this.value);
}

class NameVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NameVO(String input) {
    return NameVO._(right(input));
  }

  const NameVO._(this.value);
}

class ImageUrlVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ImageUrlVO(String input) {
    return ImageUrlVO._(right(input));
  }

  const ImageUrlVO._(this.value);
}

class VersionVO extends ValueObject<Version> {
  @override
  final Either<ValueFailure<Version>, Version> value;

  factory VersionVO(String input) {
    if (input.isNotEmpty) {
      return VersionVO._(right(Version.parse(input)));
    } else {
      return VersionVO._(right(Version.parse("0.0.0")));
    }
  }

  factory VersionVO.empty() => VersionVO("");

  const VersionVO._(this.value);
}

/// 당장 모르겠을때
class StringVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringVO(String input) {
    return StringVO._(right(input));
  }

  const StringVO._(this.value);
}

class DoubleVO extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory DoubleVO(double input) {
    return DoubleVO._(right(input));
  }

  const DoubleVO._(this.value);
}

class BooleanVO extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  // ignore: avoid_positional_boolean_parameters
  factory BooleanVO(bool input) {
    return BooleanVO._(right(input));
  }

  const BooleanVO._(this.value);
}

class DateVO extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory DateVO(DateTime input) {
    return DateVO._(right(input));
  }

  const DateVO._(this.value);
}

class IntVO extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory IntVO(int input) {
    return IntVO._(right(input));
  }

  const IntVO._(this.value);
}

class ListVO<T> extends ValueObject<List<T>> {
  @override
  final Either<ValueFailure<List<T>>, List<T>> value;

  factory ListVO(List<T> input) {
    return ListVO._(right(input));
  }

  factory ListVO.empty() => ListVO([]);

  const ListVO._(this.value);
}

class ColorVO extends ValueObject<Color?> {
  @override
  final Either<ValueFailure<Color?>, Color?> value;

  factory ColorVO(String? input) {
    if (input?.isNotEmpty == true) {
      return ColorVO._(right(Color(int.parse("0x${input ?? ""}"))));
    } else {
      return ColorVO._(right(null));
    }
  }

  const ColorVO._(this.value);
}

class ImageDataVO extends ValueObject<Uint8List> {
  @override
  final Either<ValueFailure<Uint8List>, Uint8List> value;

  factory ImageDataVO(Uint8List input) {
    return ImageDataVO._(right(input));
  }

  const ImageDataVO._(this.value);
}
