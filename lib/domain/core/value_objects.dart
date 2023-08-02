// Package imports:
import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:snowrun_app/domain/core/errors.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

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

class MediaUrlVO extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MediaUrlVO(String input) {
    return MediaUrlVO._(right(input));
  }

  factory MediaUrlVO.empty() => MediaUrlVO("http://localhost/empty/image");

  const MediaUrlVO._(this.value);
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

  factory DateVO.empty() {
    return DateVO(DateTime.now().toLocal());
  }

  factory DateVO.fromString(String input) {
    try {
      DateTime parsedDateTime = DateTime.parse(input);
      return DateVO(parsedDateTime);
    } catch (e) {
      return DateVO._(left(ValueFailure.empty(failedValue: DateTime.now())));
    }
  }

  String serverFormat() {
    return "${getOrCrash().add(const Duration(hours: -9)).toIso8601String()}Z";
  }

  /// 현 디바이스의 타임존에 맞게 변환된다.
  /// 'yyyy-MM-dd HH:mm'
  String format(String format) {
    return DateFormat(format).format(getOrCrash().toLocal());
  }

  const DateVO._(this.value);
}

class TempDateVO extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory TempDateVO(String input) {
    return TempDateVO._(right(DateTime.parse(input)));
  }

  factory TempDateVO.empty() => TempDateVO("");

  const TempDateVO._(this.value);
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

  factory DoubleVO(double? input) {
    return DoubleVO._(right(input ?? 0));
  }

  factory DoubleVO.empty() => DoubleVO(0);

  const DoubleVO._(this.value);
}

class CoordinateVO extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory CoordinateVO(double? input) {
    return CoordinateVO._(right(input ?? 0));
  }

  factory CoordinateVO.empty() => CoordinateVO(0);

  const CoordinateVO._(this.value);
}

class IdVO extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory IdVO(int input) {
    //TODO : id null 예외
    return IdVO._(right(input));
  }

  factory IdVO.empty() => IdVO(-1);

  const IdVO._(this.value);
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

class MapVO<T> extends ValueObject<Map<T, T>> {
  @override
  final Either<ValueFailure<Map<T, T>>, Map<T, T>> value;

  factory MapVO(Map<T, T> input) {
    return MapVO._(right(input));
  }

  factory MapVO.empty() => MapVO({});

  const MapVO._(this.value);
}