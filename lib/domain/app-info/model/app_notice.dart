import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/app-info/model/app_notice_button_info.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_notice.freezed.dart';
@freezed
class AppNotice with _$AppNotice {
  const AppNotice._();
  const factory AppNotice({
    required StringVO imageUrl,
    required StringVO title,
    required StringVO description,
    AppNoticeButtonInfo? negativeButton,
    AppNoticeButtonInfo? positiveButton,
    required BooleanVO isForcedFinish,
  }) = _AppNotice;

  factory AppNotice.empty() => AppNotice(
    imageUrl: StringVO(""),
    title: StringVO(""),
    description: StringVO(""),
    negativeButton: null,
    positiveButton: null,
    isForcedFinish: BooleanVO(false),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return imageUrl.failureOrUnit
        .andThen(title.failureOrUnit)
        .andThen(description.failureOrUnit)
        .andThen(isForcedFinish.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}