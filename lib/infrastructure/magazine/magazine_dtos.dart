import 'package:doortoout/domain/magazine/content_type.dart';
import 'package:doortoout/domain/magazine/magazine_header.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/magazine/base_content.dart';
import 'package:doortoout/domain/magazine/magazine.dart';

part 'magazine_dtos.freezed.dart';

part 'magazine_dtos.g.dart';

@freezed
class MagazineDto with _$MagazineDto {
  const MagazineDto._();

  const factory MagazineDto({
    @JsonKey(name: 'id') required int magazineId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'header') required MagazineHeaderDto header,
    @JsonKey(name: 'contents') required List<BaseContentDto> contents,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _MagazineDto;

  factory MagazineDto.fromJson(Map<String, dynamic> json) =>
      _$MagazineDtoFromJson(json);

  factory MagazineDto.fromDomain(Magazine magazine) {
    return MagazineDto(
      magazineId: magazine.id.getOrCrash(),
      title: magazine.title.getOrCrash(),
      header: MagazineHeaderDto.fromDomain(magazine.magazineHeader),
      contents: magazine.contents
          .getOrCrash()
          .map((content) => BaseContentDto.fromDomain(content))
          .toList(),
      createdAt: magazine.createdAt.getOrCrash(),
      updatedAt: magazine.updatedAt.getOrCrash(),
    );
  }

  Magazine toDomain() {
    return Magazine(
      id: IntVO(magazineId),
      title: StringVO(title),
      magazineHeader: header.toDomain(),
      contents:
          ListVO(contents.map((contentDto) => contentDto.toDomain()).toList()),
      createdAt: DateTimeVO(createdAt),
      updatedAt: DateTimeVO(updatedAt),
    );
  }
}

@freezed
class MagazineHeaderDto with _$MagazineHeaderDto {
  const MagazineHeaderDto._();

  const factory MagazineHeaderDto({
    @JsonKey(name: 'id') required int headerId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'subtitle') required String subtitle,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'main_image') required String mainImage,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _MagazineHeaderDto;

  factory MagazineHeaderDto.fromJson(Map<String, dynamic> json) =>
      _$MagazineHeaderDtoFromJson(json);

  factory MagazineHeaderDto.fromDomain(MagazineHeader header) {
    return MagazineHeaderDto(
      headerId: header.id.getOrCrash(),
      title: header.title.getOrCrash(),
      subtitle: header.subtitle.getOrCrash(),
      description: header.description.getOrCrash(),
      mainImage: header.mainImage.getOrCrash(),
      createdAt: header.createdAt.getOrCrash().toIso8601String(),
    );
  }

  MagazineHeader toDomain() {
    return MagazineHeader(
      id: IntVO(headerId),
      title: StringVO(title),
      subtitle: StringVO(subtitle),
      description: StringVO(description),
      mainImage: StringVO(mainImage),
      createdAt: DateTimeVO(DateTime.parse(createdAt)),
    );
  }
}

@freezed
class BaseContentDto with _$BaseContentDto {
  const BaseContentDto._();

  const factory BaseContentDto({
    @JsonKey(name: 'id') required int contentId,
    @JsonKey(name: 'order') required int contentOrder,
    @JsonKey(name: 'magazine') required int magazineId,
    @JsonKey(name: 'content_type') required String contentType,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'level') int? level,
    @JsonKey(name: 'image_urls') List<String>? imageUrls,
    @JsonKey(name: 'button_text') String? buttonText,
    @JsonKey(name: 'button_url') String? buttonUrl,
  }) = _BaseContentDto;

  factory BaseContentDto.fromDomain(BaseContent baseContent) {
    return BaseContentDto(
      contentId: baseContent.id.getOrCrash(),
      contentOrder: baseContent.order.getOrCrash(),
      magazineId: baseContent.magazineId.getOrCrash(),
      contentType: ContentType.title.toValue(),
      text: baseContent.text.getOrCrash(),
      level: baseContent.level.getOrCrash(),
      imageUrls: baseContent.imageUrls.getOrCrash(),
      buttonText: baseContent.buttonText.getOrCrash(),
      buttonUrl: baseContent.buttonUrl.getOrCrash(),
    );
  }

  BaseContent toDomain() {
    return BaseContent(
      id: IntVO(contentId),
      order: IntVO(contentOrder),
      magazineId: IntVO(magazineId),
      contentType: ContentTypeExtension.fromValue(contentType),
      text: StringVO(text ?? ""),
      level: IntVO(level ?? -1),
      imageUrls: ListVO(imageUrls ?? []),
      buttonText: StringVO(buttonText ?? ""),
      buttonUrl: StringVO(buttonUrl ?? ""),
    );
  }

  factory BaseContentDto.fromJson(Map<String, dynamic> json) =>
      _$BaseContentDtoFromJson(json);
}
