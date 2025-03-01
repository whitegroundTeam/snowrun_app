import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/magazine/magazine_header.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/magazine/base_content.dart';

part 'magazine.freezed.dart';

@freezed
class Magazine with _$Magazine {
  const Magazine._();

  const factory Magazine({
    required IntVO id,
    required StringVO title,
    required MagazineHeader magazineHeader,
    required ListVO<BaseContent> contents,
    required DateTimeVO createdAt,
    required DateTimeVO updatedAt,
  }) = _Magazine;

  factory Magazine.empty() => Magazine(
    id: IntVO(-1),
    title: StringVO(""),
    magazineHeader: MagazineHeader.empty(),
    contents: ListVO([]),
    createdAt: DateTimeVO(DateTime.now()),
    updatedAt: DateTimeVO(DateTime.now()),
  );
}