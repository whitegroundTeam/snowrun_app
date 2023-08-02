import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/domain/user/user_failure.dart';


abstract class IUserRepository {
  Future<Either<UserFailure, List<User>>> getUsers();
}