// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doortoout/domain/error/app_error.dart';

part 'riding_failure.freezed.dart';

@freezed
class RidingFailure with _$RidingFailure {
  const factory RidingFailure.unexpected() = _Unexpected;
}