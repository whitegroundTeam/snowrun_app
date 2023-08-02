import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'boundary.freezed.dart';

@freezed
class Boundary with _$Boundary {
  const Boundary._();

  const factory Boundary({
    required StringVO name,
    //required DoubleVO doubleParam,
    //required StringVO stringParam,
    //required IntVO intParam,
    //required ListVO<MenuMedia> listParam,
    //required EnumEnum enumParam,
  }) = _Boundary;

  factory Boundary.empty() => Boundary(
    name: StringVO(""),
    //doubleParam: DoubleVO(-1),
    //stringParam: StringVO(""),
    //intParam: IntVO(-1),
    //listParam: ListVO<MenuOption>([]),
    //enumParam: EnumEnum.findByName(),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}