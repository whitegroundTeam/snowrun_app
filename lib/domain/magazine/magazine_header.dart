import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'magazine_header.freezed.dart';

@freezed
class MagazineHeader with _$MagazineHeader {
  const MagazineHeader._();

  const factory MagazineHeader({
    required IntVO id,
    required StringVO title,
    required StringVO subtitle,
    required StringVO description,
    required StringVO mainImage,
    required DateTimeVO createdAt,
  }) = _MagazineHeader;

  factory MagazineHeader.empty() => MagazineHeader(
    id: IntVO(-1),
    title: StringVO(""),
    subtitle: StringVO(""),
    description: StringVO(""),
    mainImage: StringVO(""),
    createdAt: DateTimeVO(DateTime.now()),
  );
}