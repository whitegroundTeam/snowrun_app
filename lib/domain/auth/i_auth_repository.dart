// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:snowrun_app/domain/auth/auth_failure.dart';
import 'package:snowrun_app/domain/auth/oauth_sign_result.dart';
import 'package:snowrun_app/domain/auth/value_objects.dart';
import 'package:snowrun_app/domain/user/model/app_user.dart';
import 'package:snowrun_app/domain/user/model/user.dart';

abstract class IAuthRepository {
  Future<Option<AppUser>> getSignedInUser();

  Future<Option<User>> me();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  // bool : isNewUser
  Future<Either<AuthFailure, OauthSignResult>> signWithGoogle();

  Future<Either<AuthFailure, OauthSignResult>> signWithApple();

  Future<void> signOut();

  Future<bool> delete();
}