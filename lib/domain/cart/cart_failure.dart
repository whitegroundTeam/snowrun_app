// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/error/app_error.dart';

part 'cart_failure.freezed.dart';

@freezed
class CartFailure with _$CartFailure {
  const factory CartFailure.unexpected() = _Unexpected;
}