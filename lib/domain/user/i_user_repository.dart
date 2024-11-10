import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/user/model/snow_ball_profile_image.dart';
import 'package:doortoout/domain/user/model/user.dart';
import 'package:doortoout/domain/user/model/user_location.dart';
import 'package:doortoout/domain/user/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, Unit>> updateProfileImage(String profileImageType);
  Future<Either<UserFailure, List<SnowBallProfileImage>>> getSnowBallProfileImages();

  Future<Either<UserFailure, User>> updateCurrentLocation(
      UserLocation userLocation);

  Future<Either<UserFailure, Unit>> savePushToken(String token);
}
