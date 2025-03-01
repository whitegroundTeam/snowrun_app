import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/magazine/content_type.dart';

part 'base_content.freezed.dart';

@freezed
class BaseContent with _$BaseContent {
  const BaseContent._();

  const factory BaseContent({
    required IntVO id,
    required IntVO order,
    required IntVO magazineId,
    required ContentType contentType,
    required StringVO text,
    required IntVO level,
    required ListVO<String> imageUrls,
    required StringVO buttonText,
    required StringVO buttonUrl,
  }) = _BaseContent;

  factory BaseContent.empty() => BaseContent(
    id: IntVO(-1),
    order: IntVO(0),
    magazineId: IntVO(-1),
    contentType: ContentType.unknown,
    text: StringVO(""),
    level: IntVO(-1),
    imageUrls: ListVO([]),
    buttonText: StringVO(""),
    buttonUrl: StringVO(""),
  );

  bool get isTitle => contentType == ContentType.title;
  bool get isDescription => contentType == ContentType.description;
  bool get isImage => contentType == ContentType.image;
  bool get isButton => contentType == ContentType.button;
}