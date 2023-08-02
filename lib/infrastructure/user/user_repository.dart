import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/user/i_user_repository.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/domain/user/user_failure.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';
import 'package:snowrun_app/infrastructure/user/user_dtos.dart';


@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final CoreApi _api;

  UserRepository(this._api);

  @override
  Future<Either<UserFailure, List<User>>> getUsers() {
    // final response = await _api.getCarts();
    // final infoJson =
    // json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    // if (response.statusCode != 200) {
    //   final infoJson =
    //   json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    //   final appError = AppErrorDto.fromJson(infoJson);
    //   return left(CartFailure.unexpected(appError.toDomain()));
    // }
    // final carts = CartDto.fromJson(infoJson).toDomain();

    List<UserDto> testUsersDtos = [
      const UserDto(name: "펜타포트"),
      const UserDto(name: "펜타포트")
    ];
    List<User> testUsers = testUsersDtos.map((e) => e.toDomain()).toList();
    return Future.value(right(testUsers));
  }
}