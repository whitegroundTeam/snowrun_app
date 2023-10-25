// Dart imports:
import 'dart:convert';
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:snowrun_app/domain/auth/auth_method.dart';
import 'package:snowrun_app/domain/user/model/app_user.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/auth/auth_failure.dart';
import 'package:snowrun_app/domain/auth/oauth_sign_result.dart';
import 'package:snowrun_app/domain/auth/value_objects.dart';
import 'package:snowrun_app/domain/user/model/user.dart' as auth_user;
import 'package:snowrun_app/domain/auth/i_auth_repository.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';
import 'package:snowrun_app/infrastructure/auth/firebase_user_mapper.dart';


@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final CoreApi _api;
  // final AnalyticsService analyticsService;
  // final HivePro localStore;

  AuthRepository(
      this._firebaseAuth,
      this._googleSignIn,
      this._api,
      // this.analyticsService,
      // this.localStore,
      );

  @override
  Future<Option<AppUser>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Option<auth_user.User>> me() async {
    // final response = await _api.me();
    //
    // if (response.statusCode == 401) {
    //   return none();
    // }
    //
    // final jsonData =
    // json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    // final userDto = UserDto.fromJson(jsonData);
    // final user = userDto.toDomain();
    // final userNickname = user.nickname.getOrCrash();
    // final userGender = user.gender;
    // localStore.setCurrentUserNickname(userNickname);
    // localStore.setCurrentUserGender(userGender.value);
    //
    // try {
    //   final userId = "${jsonData['id'] as int}";
    //   FirebaseCrashlytics.instance.setUserIdentifier(userId);
    //   analyticsService.setUserProperties(
    //     userId: userId,
    //     joinedTimestamp: "${jsonData['date_joined_timestamp'] as double}",
    //     clothCount: user.clothCount.getOrCrash().toString(),
    //     styleCount: user.styleCount.getOrCrash().toString(),
    //     logCount: user.wearingCount.getOrCrash().toString(),
    //     nickname: user.nickname.getOrCrash(),
    //     gender: "${user.gender.value}",
    //   );
    // } catch (e) {
    //   debugPrint(e.toString());
    //   // FIXME : 로그 못보낸 문제 상황 처리해줄 것
    // }

    // return some(user);
    return some(auth_user.User.empty());
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
  //   final emailAddressStr = emailAddress.getOrCrash();
  //   final passwordStr = password.getOrCrash();
  //   try {
  //     final UserCredential credential =
  //     await _firebaseAuth.createUserWithEmailAndPassword(
  //       email: emailAddressStr,
  //       password: passwordStr,
  //     );
  //     final user = credential.user;
  //     if (user == null) {
  //       return left(const AuthFailure.serverError());
  //     }
  //
  //     await _api.requestSign(await user.getIdToken() ?? "");
  //
  //     return right(unit);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'email-already-in-use') {
  //       return left(const AuthFailure.emailAlreadyInUse());
  //     } else {
  //       return left(const AuthFailure.serverError());
  //     }
  //   } on ServerAuthException {
  //     _firebaseAuth.currentUser?.delete();
  //     return left(const AuthFailure.serverError());
  //   } on Exception {
  //     return left(const AuthFailure.serverError());
  //   }
      return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    // final emailAddressStr = emailAddress.getOrCrash();
    // final passwordStr = password.getOrCrash();
    // try {
    //   final UserCredential credential =
    //   await _firebaseAuth.signInWithEmailAndPassword(
    //     email: emailAddressStr,
    //     password: passwordStr,
    //   );
    //   final user = credential.user;
    //   if (user == null) {
    //     return left(const AuthFailure.serverError());
    //   }
    //
    //   await _api.requestSign(await user.getIdToken() ?? "");
    //
    //   return right(unit);
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'wrong-password' || e.code == 'user-not-found') {
    //     return left(const AuthFailure.invalidEmailAndPasswordCombination());
    //   } else {
    //     return left(const AuthFailure.serverError());
    //   }
    // } on Exception {
    //   return left(const AuthFailure.serverError());
    // }

    return left(const AuthFailure.serverError());
  }

  @override
  Future<Either<AuthFailure, OauthSignResult>> signWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      final UserCredential credential =
      await _firebaseAuth.signInWithCredential(authCredential);

      final userInfo = credential.additionalUserInfo;
      final user = credential.user;
      if (userInfo == null || user == null) {
        return left(const AuthFailure.serverError());
      }

      // final SignResponse response =
      // await _api.requestSign(await user.getIdToken() ?? "");
      // return right(
      //   OauthSignResult(
      //     isNewUser: response.isNewUser,
      //     provider: AuthMethod.google,
      //   ),
      // );
      //TODO : 임시용
      return left(const AuthFailure.serverError());
    } on FirebaseAuthException catch (e) {
      return left(const AuthFailure.serverError());
    } on Exception catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, OauthSignResult>> signWithApple() async {
    // try {
    //   final rawNonce = generateNonce();
    //   final nonce = sha256ofString(rawNonce);
    //
    //   final appleCredential = await SignInWithApple.getAppleIDCredential(
    //     scopes: [
    //       AppleIDAuthorizationScopes.email,
    //     ],
    //     nonce: nonce,
    //   );
    //
    //   final oauthCredential = OAuthProvider("apple.com").credential(
    //     idToken: appleCredential.identityToken,
    //     rawNonce: rawNonce,
    //   );
    //
    //   final UserCredential credential =
    //   await _firebaseAuth.signInWithCredential(oauthCredential);
    //   final userInfo = credential.additionalUserInfo;
    //   final user = credential.user;
    //   if (userInfo == null || user == null) {
    //     return left(const AuthFailure.serverError());
    //   }
    //
    //   final SignResponse response =
    //   await _api.requestSign(await user.getIdToken() ?? "");
    //
    //   return right(
    //     OauthSignResult(
    //       isNewUser: response.isNewUser,
    //       provider: OauthSignProvider.apple,
    //     ),
    //   );
    // } on FirebaseAuthException {
    //   return left(const AuthFailure.serverError());
    // } on SignInWithAppleAuthorizationException {
    //   return left(const AuthFailure.serverError());
    // } on PlatformException {
    //   return left(const AuthFailure.serverError());
    // } on Exception {
    //   return left(const AuthFailure.serverError());
    // }
    return left(const AuthFailure.serverError());
  }

  @override
  Future<void> signOut() => Future.wait([
    _googleSignIn.signOut(),
    _firebaseAuth.signOut(),
  ]);

  String generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  @override
  Future<bool> delete() async {
    // final response = await _api.deleteUser();
    //
    // if (response.statusCode == 200) {
    //   return true;
    // }
    return false;
  }
}
