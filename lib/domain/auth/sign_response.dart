import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doortoout/domain/auth/auth_token.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';

part 'sign_response.freezed.dart';

@freezed
class SignResponse with _$SignResponse {
  const SignResponse._();

  const factory SignResponse({
    required AuthToken authToken,
    required BooleanVO isNewUser,
  }) = _SignResponse;

  factory SignResponse.empty() => SignResponse(
        authToken: AuthToken.empty(),
        isNewUser: BooleanVO(false),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return isNewUser.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}