import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
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
  Future<Either<UserFailure, List<User>>> getUsers() async {
    final response = await _api.getUsers();
    if (response.statusCode == 200) {
      List<User> users = (json.decode(response.body) as List)
          .map((i) => UserDto.fromJson(i)).map((e) => e.toDomain()).toList();
      return right(users);
    } else {
      final infoJson =
      json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      final appError = AppErrorDto.fromJson(infoJson);
      return left(UserFailure.unexpected(appError.toDomain()));
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateCurrentLocation(UserLocation userLocation) async {
    final response = await _api.updateUserCurrentLocation(UserLocationDto.fromDomain(userLocation));
    if (response.statusCode == 200) {
      return right(unit);
    } else {
      final infoJson =
      json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      final appError = AppErrorDto.fromJson(infoJson);
      return left(UserFailure.unexpected(appError.toDomain()));
    }
  }
}