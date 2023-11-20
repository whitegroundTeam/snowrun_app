import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';

part 'riding_room.freezed.dart';

@freezed
class RidingRoom with _$RidingRoom {
  const RidingRoom._();

  const factory RidingRoom({
    required IntVO id,
    required StringVO name,
    required BooleanVO isPrivate,
    required RidingPlayer? me,
    required ListVO<RidingPlayer> players,
    required IntVO totalPlayersCount,
  }) = _RidingRoom;

  factory RidingRoom.empty() => RidingRoom(
        id: IntVO(-1),
        name: StringVO(""),
        isPrivate: BooleanVO(true),
        me: null,
        players: ListVO([]),
        totalPlayersCount: IntVO(0),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(name.failureOrUnit)
        .andThen(isPrivate.failureOrUnit)
        .andThen(players.failureOrUnit)
        .andThen(totalPlayersCount.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
