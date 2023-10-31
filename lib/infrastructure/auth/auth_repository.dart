// Dart imports:
import 'dart:convert';
import 'dart:math';

// Flutter imports:
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:snowrun_app/domain/auth/auth_method.dart';
import 'package:snowrun_app/domain/auth/sign_response.dart';
import 'package:snowrun_app/domain/user/model/app_user.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/auth/auth_failure.dart';
import 'package:snowrun_app/domain/auth/auth_sign_result.dart';
import 'package:snowrun_app/domain/auth/value_objects.dart';
import 'package:snowrun_app/domain/user/model/user.dart' as auth_user;
import 'package:snowrun_app/domain/auth/i_auth_repository.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';
import 'package:snowrun_app/infrastructure/auth/exceptions.dart';
import 'package:snowrun_app/infrastructure/auth/firebase_user_mapper.dart';
import 'package:snowrun_app/infrastructure/hive/hive_provider.dart';
import 'package:snowrun_app/infrastructure/user/user_dtos.dart';

import 'auth_dtos.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final CoreApi _api;
  final HiveProvider hiveProvider;

  AuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
    this._api,
    this.hiveProvider,
  );

  @override
  Future<Option<AppUser>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Option<auth_user.User>> me() async {
    final response = await _api.me();

    if (response.statusCode == 401) {
      return none();
    }

    final jsonData =
        json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final userDto = UserDto.fromJson(jsonData);
    final user = userDto.toDomain();

    try {
      final userId = "${jsonData['id'] as int}";
      FirebaseCrashlytics.instance.setUserIdentifier(userId);
    } catch (e) {
      debugPrint(e.toString());
      // FIXME : 로그 못보낸 문제 상황 처리해줄 것
    }

    return some(user);
  }

  @override
  Future<Either<AuthFailure, AuthSignResult>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final UserCredential credential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      final user = credential.user;
      if (user == null) {
        return left(const AuthFailure.serverError());
      }

      final response = await _api.signWithIdToken(
          IdTokenRequestDto.fromDomain(await user.getIdToken() ?? ""));
      if (response.statusCode == 200) {
        final infoJson = json.decode(utf8.decode(response.bodyBytes))
            as Map<String, dynamic>;
        final signResponseDto = SignResponseDto.fromJson(infoJson);

        updateLocalStore(
            authToken: signResponseDto.token.authToken, authMethod: AuthMethod.apple);
        return right(
          const AuthSignResult(
            isNewUser: true,
            provider: AuthMethod.email,
          ),
        );
      } else {
        return left(const AuthFailure.emailAlreadyInUse());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    } on ServerAuthException {
      _firebaseAuth.currentUser?.delete();
      return left(const AuthFailure.serverError());
    } on Exception {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, AuthSignResult>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final UserCredential credential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      final user = credential.user;
      if (user == null) {
        return left(const AuthFailure.serverError());
      }

      final response = await _api.signWithIdToken(
          IdTokenRequestDto.fromDomain(await user.getIdToken() ?? ""));
      if (response.statusCode == 200) {
        final infoJson = json.decode(utf8.decode(response.bodyBytes))
            as Map<String, dynamic>;
        final signResponseDto = SignResponseDto.fromJson(infoJson);

        updateLocalStore(
            authToken: signResponseDto.token.authToken, authMethod: AuthMethod.apple);
        return right(
          AuthSignResult(
            isNewUser: signResponseDto.isNewUser,
            provider: AuthMethod.email,
          ),
        );
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    } on Exception {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, AuthSignResult>> signWithGoogle() async {
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

      final response = await _api.signWithIdToken(
          IdTokenRequestDto.fromDomain(await user.getIdToken() ?? ""));
      if (response.statusCode == 200) {
        final infoJson = json.decode(utf8.decode(response.bodyBytes))
            as Map<String, dynamic>;
        final signResponseDto = SignResponseDto.fromJson(infoJson);

        updateLocalStore(
            authToken: signResponseDto.token.authToken, authMethod: AuthMethod.apple);

        return right(
          AuthSignResult(
            isNewUser: signResponseDto.isNewUser,
            provider: AuthMethod.google,
          ),
        );
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseAuthException catch (e) {
      return left(const AuthFailure.serverError());
    } on Exception catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, AuthSignResult>> signWithApple() async {
    try {
      final rawNonce = generateNonce();
      final nonce = sha256ofString(rawNonce);

      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
        ],
        nonce: nonce,
      );

      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      final UserCredential credential =
          await _firebaseAuth.signInWithCredential(oauthCredential);
      final userInfo = credential.additionalUserInfo;
      final user = credential.user;
      if (userInfo == null || user == null) {
        return left(const AuthFailure.serverError());
      }

      final response = await _api.signWithIdToken(
          IdTokenRequestDto.fromDomain(await user.getIdToken() ?? ""));
      if (response.statusCode == 200) {
        final infoJson = json.decode(utf8.decode(response.bodyBytes))
            as Map<String, dynamic>;
        final signResponseDto = SignResponseDto.fromJson(infoJson);

        updateLocalStore(
            authToken: signResponseDto.token.authToken, authMethod: AuthMethod.apple);

        return right(
          AuthSignResult(
            isNewUser: signResponseDto.isNewUser,
            provider: AuthMethod.apple,
          ),
        );
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseAuthException {
      return left(const AuthFailure.serverError());
    } on SignInWithAppleAuthorizationException {
      return left(const AuthFailure.serverError());
    } on PlatformException {
      return left(const AuthFailure.serverError());
    } on Exception {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        hiveProvider.setAuthToken(""),
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

  updateLocalStore(
      {required String authToken, required AuthMethod authMethod}) {
    hiveProvider.setAuthToken(authToken);
    hiveProvider.setRecentlySignInMethod(authMethod.description);
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
