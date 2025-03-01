import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link.freezed.dart';

@freezed
class Link with _$Link {
  const Link._();

  const factory Link({
    required StringVO name, // 링크 이름
    required StringVO url, // URL (외부 URL 또는 앱 링크 URI)
    required BooleanVO isExternal, // 외부 링크 여부
  }) = _Link;

  factory Link.empty() => Link(
        name: StringVO(""),
        url: StringVO(""),
        isExternal: BooleanVO(true),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(url.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
