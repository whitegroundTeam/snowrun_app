import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'auth_token.freezed.dart';
@freezed
class AuthToken with _$AuthToken {
  const AuthToken._();
  const factory AuthToken({
    required StringVO authToken,
  }) = _AuthToken;
  factory AuthToken.empty() => AuthToken(
      authToken: StringVO(""),
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return authToken.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}