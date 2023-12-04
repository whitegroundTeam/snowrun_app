import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_version.freezed.dart';

@freezed
class AppVersion with _$AppVersion {
  const AppVersion._();

  const factory AppVersion({
    required VersionVO min,
    required VersionVO latest,
    required StringVO url,
    VersionVO? current,
  }) = _AppVersion;

  factory AppVersion.empty() => AppVersion(
    min: VersionVO(""),
    latest: VersionVO(""),
    url: StringVO(""),
    current: VersionVO(""),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return min.failureOrUnit
        .andThen(latest.failureOrUnit)
        .andThen(url.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
