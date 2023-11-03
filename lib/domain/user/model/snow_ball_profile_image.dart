import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'snow_ball_profile_image.freezed.dart';

@freezed
class SnowBallProfileImage with _$SnowBallProfileImage {
  const SnowBallProfileImage._();

  const factory SnowBallProfileImage({
    required StringVO key,
    required StringVO url,
  }) = _SnowBallProfileImage;

  factory SnowBallProfileImage.empty() => SnowBallProfileImage(
        key: StringVO(""),
        url: StringVO(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return key.failureOrUnit
        .andThen(url.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
