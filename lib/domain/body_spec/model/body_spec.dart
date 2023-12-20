import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/body_spec/model/foot_size.dart';
import 'package:snowrun_app/domain/body_spec/model/height.dart';
import 'package:snowrun_app/domain/body_spec/model/weight.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_spec.freezed.dart';

@freezed
class BodySpec with _$BodySpec {
  const BodySpec._();

  const factory BodySpec({
    required Weight? weight,
    required Height? height,
    required FootSize? footSize,
    required DoubleVO din, // deutsches institut fur normung
  }) = _BodySpec;

  factory BodySpec.empty() => BodySpec(
        weight: null,
        height: null,
        footSize: null,
        din: DoubleVO(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return din.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}