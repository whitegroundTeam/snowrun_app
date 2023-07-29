// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_failure.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.unexpected() = _Unexpected;

  const factory NetworkFailure.insufficientPermission() =
  _InsufficientPermission;

  const factory NetworkFailure.unableToUpdate() = _UnableToUpdate;
}
