// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info_failure.freezed.dart';

@freezed
class AppInfoFailure with _$AppInfoFailure {
  const factory AppInfoFailure.unexpected() = _Unexpected;
  const factory AppInfoFailure.invalidVersion() = _InvalidVersion;
}
