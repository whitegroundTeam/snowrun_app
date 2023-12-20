import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/body_spec/model/body_spec_value.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'foot_size.freezed.dart';

@freezed
class FootSize with _$FootSize {
  const FootSize._();

  const factory FootSize({
    required BodySpecValue? value,
    required FootSizeUnit unit,
    required ListVO<FootShape> footShapes,
  }) = _FootSize;

  factory FootSize.empty() => FootSize(
        value: null,
        unit: FootSizeUnit.mm,
        footShapes: ListVO([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return value?.failureOption ?? const None();
  }


}

enum FootSizeUnit {
  mm, // Millimeters
  usM, // US Men
  usW, // US Women
  usC, // US Child
  eu, // EU
  ukM, // UK Men
  ukW, // UK Women
  ukC, // UK Child
  jp; // Japan
}

enum FootShape {
  normal, // 해당 없음
  highInstep, // 발등이 높음
  wideFoot, // 발볼이 넓음
  longToes, // 발끝이 길음
  flatFeet, // 평발
  highArch, // 높은 아치
}
