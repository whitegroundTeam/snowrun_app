import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';

part 'riding_player.freezed.dart';

@freezed
class RidingPlayer with _$RidingPlayer {
  const RidingPlayer._();

  const factory RidingPlayer({
    required IntVO id,
    required IntVO userId,
    required StringVO nickname,
    required IntVO roomId,
    required UserLocation? location,
    required DateTimeVO locationUpdatedAt,
    required StringVO profileImage,
  }) = _RidingPlayer;

  factory RidingPlayer.empty() => RidingPlayer(
        id: IntVO(-1),
        userId: IntVO(-1),
        nickname: StringVO(""),
        roomId: IntVO(-1),
        location: UserLocation.empty(),
        locationUpdatedAt: DateTimeVO(DateTime.now()),
        profileImage: StringVO(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(userId.failureOrUnit)
        .andThen(nickname.failureOrUnit)
        .andThen(roomId.failureOrUnit)
        .andThen(locationUpdatedAt.failureOrUnit)
        .andThen(profileImage.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
