// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/error/app_error.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.unexpected(AppError appError) = _Unexpected;
}