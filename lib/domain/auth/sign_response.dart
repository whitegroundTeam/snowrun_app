import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'sign_response.freezed.dart';

@freezed
class SignResponse with _$SignResponse {
  const SignResponse._();

  const factory SignResponse({
    required StringVO authToken,
    required BooleanVO isNewUser,
  }) = _SignResponse;

  factory SignResponse.empty() => SignResponse(
        authToken: StringVO(""),
        isNewUser: BooleanVO(false),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return authToken.failureOrUnit
        .andThen(isNewUser.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
