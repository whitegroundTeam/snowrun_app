import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_contents_model.freezed.dart';

@freezed
class TestContentsModel with _$TestContentsModel {
  const TestContentsModel._();

  const factory TestContentsModel({
    required StringVO title,
    required StringVO content,
  }) = _TestContentsModel;

  factory TestContentsModel.empty() => TestContentsModel(
        title: StringVO(""),
        content: StringVO(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(content.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
