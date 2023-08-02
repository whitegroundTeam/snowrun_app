import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_error.freezed.dart';

@freezed
class AppError with _$AppError {
  const AppError._();

  const factory AppError({
    required IntVO statusCode,
    required StringVO title,
    required StringVO detail,
    required StringVO type,
  }) = _AppError;

  factory AppError.empty() => AppError(
    statusCode: IntVO(0),
    title: StringVO(""),
    detail: StringVO(""),
    type: StringVO(""),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return statusCode.failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(detail.failureOrUnit)
        .andThen(type.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}