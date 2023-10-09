import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/error/app_error.dart';

part 'error_response_dtos.freezed.dart';

part 'error_response_dtos.g.dart';

@freezed
class AppErrorDto with _$AppErrorDto {
  const AppErrorDto._();

  // {
  //   "title": "Not Found User Coupon.",
  //   "status": 404,
  //   "detail": "null",
  //   "code": "USER_COUPON-0001",
  //   "type": "UserCouponNotFoundException"
  // }

  const factory AppErrorDto({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'detail') String? detail,
    @JsonKey(name: 'status') required int status,
  }) = _AppErrorDto;

  AppError toDomain() {
    return AppError(
      type: StringVO(type ?? ""),
      title: StringVO(title ?? ""),
      detail: StringVO(detail ?? ""),
      statusCode: IntVO(status),
    );
  }

  factory AppErrorDto.fromJson(Map<String, dynamic> json) =>
      _$AppErrorDtoFromJson(json);
}