import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';

part 'riding_rooms.freezed.dart';

@freezed
class RidingRooms with _$RidingRooms {
  const RidingRooms._();

  const factory RidingRooms({
    required ListVO<RidingRoom> ridingRooms,
    required IntVO count,
  }) = _RidingRooms;

  factory RidingRooms.empty() => RidingRooms(
        ridingRooms: ListVO([]),
        count: IntVO(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return ridingRooms.failureOrUnit
        .andThen(count.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
