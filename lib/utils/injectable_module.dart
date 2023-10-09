// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  // @lazySingleton
  // FirebaseRemoteConfig get remoteConfig => FirebaseRemoteConfig.instance;
  //
  // @preResolve
  // Future<SharedPreferences> get sharedPreferences =>
  //     SharedPreferences.getInstance();

  // @lazySingleton
  // AnalyticsService get analyticsService => AnalyticsService();
  //
  // // 각 정보 최신 업데이트 시간 기록
  // @singleton
  // LatestDataUpdateTimeStorage get latestDataUpdateTimeStorage =>
  //     LatestDataUpdateTimeStorage();
  //
  // // 유저의 성별에 따른 카테고리 정보 제공하는 객체
  // @lazySingleton
  // ClothCategoryProvider get clothCategoryProvider => ClothCategoryProvider();
  //
  // @lazySingleton
  // DynamicLinkManager get dynamicLinkManager => DynamicLinkManager();
  //
  // @lazySingleton
  // LocalStore get localStore => LocalStore();
  //
  // @lazySingleton
  // EventBus get eventBus => EventBus();
}
