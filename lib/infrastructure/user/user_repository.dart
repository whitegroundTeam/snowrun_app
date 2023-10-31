import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/user/i_user_repository.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';
import 'package:snowrun_app/domain/user/user_failure.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';
import 'package:snowrun_app/infrastructure/error/error_response_dtos.dart';

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
  Future<Either<UserFailure, List<User>>> getUsers() async {
    // //FIXME : 임시로 넣어둔거
    final testUser = [User(id: IntVO(4891248921), nickname: StringVO("dansnow"), location: UserLocation(lat: DoubleVO(37.7363675), lng: DoubleVO(128.8795658)), image: StringVO(""))];
    return right(testUser);
    // final response = await _api.getUsers();
    // if (response.statusCode == 200) {
    //   List<User> users = (json.decode(utf8.decode(response.bodyBytes)) as List)
    //       .map((i) => UserDto.fromJson(i)).map((e) => e.toDomain()).toList();
    //   return right(users);
    // } else {
    //   final infoJson =
    //   json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    //   final appError = AppErrorDto.fromJson(infoJson);
    //   return left(UserFailure.unexpected(appError.toDomain()));
    // }
  }

  @override
  Future<Either<UserFailure, Unit>> updateCurrentLocation(UserLocation userLocation) async {
    final response = await _api.updateUserCurrentLocation(UserLocationDto.fromDomain(userLocation));
    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const UserFailure.serverError());
    }
  }
}