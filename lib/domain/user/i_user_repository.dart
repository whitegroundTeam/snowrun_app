import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';
import 'package:snowrun_app/domain/user/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, List<User>>> getUsers();

  Future<Either<UserFailure, Unit>> updateCurrentLocation(
      UserLocation userLocation);

  Future<Either<UserFailure, Unit>> savePushToken(String token);
}
