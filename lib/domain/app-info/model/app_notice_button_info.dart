import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_notice_button_info.freezed.dart';
@freezed
class AppNoticeButtonInfo with _$AppNoticeButtonInfo {
  const AppNoticeButtonInfo._();
  const factory AppNoticeButtonInfo({
    required StringVO title,
    required StringVO link,
  }) = _AppNoticeButtonInfo;
  factory AppNoticeButtonInfo.empty() => AppNoticeButtonInfo(
    title: StringVO(""),
    link: StringVO(""),
  );
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(link.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}