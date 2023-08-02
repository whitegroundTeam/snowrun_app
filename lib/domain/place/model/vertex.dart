import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'vertex.freezed.dart';

@freezed
class Vertex with _$Vertex {
  const Vertex._();

  const factory Vertex({
    required ListVO<List<double>> coordinates,
  }) = _Vertex;

  factory Vertex.empty() =>
      Vertex(
        coordinates: ListVO([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return coordinates.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}