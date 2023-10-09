// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'app_user.freezed.dart';

// Firebase User Object
@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required UniqueId id,
  }) = _AppUser;
}
