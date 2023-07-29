// Package imports:
import 'package:snowrun_app/domain/core/errors.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:uuid/uuid.dart';
import 'package:dartz/dartz.dart';

// Project imports:

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
  String toString() => 'Value($value)';
}

class UniqueIdVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueIdVO() {
    return UniqueIdVO._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueIdVO.fromUniqueString(String uniqueId) {
    return UniqueIdVO._(
      right(uniqueId),
    );
  }

  factory UniqueIdVO.empty() =>
      UniqueIdVO.fromUniqueString("empty_${const Uuid().v1()}");

  const UniqueIdVO._(this.value);
}

class StringVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringVO(String? input) {
    return StringVO._(right(input ?? ""));
  }

  factory StringVO.empty() => StringVO("This is empty string!");

  const StringVO._(this.value);
}

class BooleanVO extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  factory BooleanVO(bool input) {
    return BooleanVO._(right(input));
  }

  factory BooleanVO.empty() => BooleanVO(false);

  const BooleanVO._(this.value);
}

class DateVO extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory DateVO(DateTime input) {
    return DateVO._(right(input));
  }

  factory DateVO.empty() =>
      DateVO(DateTime.utc(2000, 1, 1).add(const Duration(hours: 9)));

  const DateVO._(this.value);
}

class IntVO extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory IntVO(int input) {
    return IntVO._(right(input));
  }

  factory IntVO.empty() => IntVO(0);

  const IntVO._(this.value);
}

class DoubleVO extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory DoubleVO(double input) {
    return DoubleVO._(right(input));
  }

  factory DoubleVO.empty() => DoubleVO(0);

  const DoubleVO._(this.value);
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
