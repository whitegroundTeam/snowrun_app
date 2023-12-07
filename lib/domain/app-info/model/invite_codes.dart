import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'invite_codes.freezed.dart';
@freezed
class InviteCodes with _$InviteCodes {
  const InviteCodes._();
  const factory InviteCodes({
    required ListVO inviteCodes,
  }) = _InviteCodes;
  factory InviteCodes.empty() => InviteCodes(
      inviteCodes: ListVO([]),
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return inviteCodes.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}