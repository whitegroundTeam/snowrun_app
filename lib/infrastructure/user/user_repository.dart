import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/user/i_user_repository.dart';
import 'package:snowrun_app/domain/user/model/snow_ball_profile_image.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';
import 'package:snowrun_app/domain/user/user_failure.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';

import 'package:snowrun_app/infrastructure/user/user_dtos.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final CoreApi _api;

  UserRepository(this._api);

  @override
  Future<Either<UserFailure, Unit>> savePushToken(String token) async {
    final response = await _api.updatePushToken(token);

    if (response.statusCode == 200) {
      final jsonData =
          json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      final userDto = UserDto.fromJson(jsonData);
      // ignore: unused_local_variable
      final user = userDto.toDomain();

      return right(unit);
    } else {
      return left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateCurrentLocation(
      UserLocation userLocation) async {
    final response = await _api
        .updateUserCurrentLocation(UserLocationDto.fromDomain(userLocation));
    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, List<SnowBallProfileImage>>>
      getSnowBallProfileImages() async {
    final response = await _api.getSnowBallProfileImages();
    if (response.statusCode == 200) {
      List<SnowBallProfileImage> snowBallProfileImages =
          (json.decode(utf8.decode(response.bodyBytes)) as List)
              .map((i) => SnowBallProfileImageDto.fromJson(i))
              .map((e) => e.toDomain())
              .toList();
      return right(snowBallProfileImages);
    } else {
      return left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfileImage(
      String profileImageType) async {
    final response = await _api.updateProfileImage(
        UpdateProfileByTypeRequestDto.fromDomain(profileImageType));

    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const UserFailure.serverError());
    }
  }
}
