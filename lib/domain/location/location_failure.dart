// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/error/app_error.dart';

part 'location_failure.freezed.dart';

@freezed
class LocationFailure with _$LocationFailure {
  const factory LocationFailure.unexpected() = _Unexpected;
  const factory LocationFailure.unexpectedWithErrorError(AppError appError) = _UnexpectedWithErrorError;
}