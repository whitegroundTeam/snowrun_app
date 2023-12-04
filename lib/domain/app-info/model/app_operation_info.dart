import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_operation_info.freezed.dart';

@freezed
class AppOperationInfo with _$AppOperationInfo {
  const AppOperationInfo._();

  const factory AppOperationInfo({
    required StringVO title,
    required ColorVO titleColor,
    required ColorVO arrowColor,
    required BooleanVO applyAnimation,
    required StringVO link,
  }) = _AppOperationInfo;

  factory AppOperationInfo.empty() => AppOperationInfo(
        title: StringVO(""),
        titleColor: ColorVO(""),
        arrowColor: ColorVO(""),
        link: StringVO(""),
        applyAnimation: BooleanVO(false),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(link.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
