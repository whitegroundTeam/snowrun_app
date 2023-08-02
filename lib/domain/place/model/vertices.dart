import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/place/model/vertices_type.dart';
import 'package:snowrun_app/types.dart';


part 'vertices.freezed.dart';

@freezed
class Vertices with _$Vertices {
  const Vertices._();

  const factory Vertices({
    required VerticesType type,
    required ListVO<Polygon> coordinates,
  }) = _Vertices;

  factory Vertices.empty() => Vertices(
    type: VerticesType.findByName(),
    coordinates: ListVO([]),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return coordinates.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}