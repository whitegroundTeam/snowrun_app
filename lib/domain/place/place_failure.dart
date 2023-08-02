// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/error/app_error.dart';

part 'place_failure.freezed.dart';

@freezed
class PlaceFailure with _$PlaceFailure {
  const factory PlaceFailure.unexpected(AppError appError) = _Unexpected;
}