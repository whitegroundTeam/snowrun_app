import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doortoout/domain/magazine/magazine.dart';
import 'package:doortoout/domain/core/value_objects.dart';

part 'magazines.freezed.dart';

@freezed
class Magazines with _$Magazines {
  const Magazines._();

  const factory Magazines({
    required ListVO<Magazine> items, // Magazine 리스트
    required IntVO count, // 전체 아이템 수
  }) = _Magazines;

  factory Magazines.empty() => Magazines(
    items: ListVO([]),
    count: IntVO(0),
  );

  /// 페이징 데이터 병합
  Magazines append(Magazines other) {
    return copyWith(
      items: ListVO(items.getOrCrash() + other.items.getOrCrash()),
      count: other.count,
    );
  }
}