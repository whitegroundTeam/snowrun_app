import 'dart:math';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/infrastructure/hive/hive_box_key.dart';
import 'package:snowrun_app/infrastructure/hive/hive_test_model.dart';

@Singleton()
class HiveProvider {
  // FIXME HIVE 암호화 고려
  Future<void> init() async {
    debugPrint('HIVE :: Initializer Local Store Open Device Box');
    await Hive.openBox<String>(recentlySignInMethodBoxKey);
    // await Hive.openBox<String>(selectedOrderTypeKey);
    // await Hive.openBox<List<String>>(franchiseOrderTypesKey);
    // await Hive.openBox(ttlBoxKey);
    // await Hive.openBox<bool>(isConfirmDauGiftTermsKey);
    // await Hive.openBox<String>(isAppNoticeNotViewedTodayKey);

    // KEY 는 secureStorage 에 저장.
    Uint8List encryptionKey = Uint8List.fromList(
        List.generate(32, (i) => Random.secure().nextInt(256)));
    await Hive.openBox(
      "encrypted_box",
      encryptionCipher: HiveAesCipher(encryptionKey),
    );

    Hive.registerAdapter(HiveTestModelAdapter());

    await Hive.openBox<HiveTestModel>(hiveTestModelKey);
  }

  static FlutterSecureStorage secureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  Box getBox({required String key}) => Hive.box(key);

  Box get hiveTestModelBox => Hive.box<HiveTestModel>(hiveTestModelKey);

  Box<String> get recentlySignInMethodBox =>
      Hive.box<String>(recentlySignInMethodBoxKey);


  /// AUTH
  Future<String> getAuthToken() async {
    debugPrint("FLUTTER_CORE :: HIVE :: getAuthToken ");
    return await secureStorage.read(key: cachedAuthTokenKey) ?? "";
  }

  Future<void> deleteAuthToken() async {
    debugPrint("FLUTTER_CORE :: HIVE :: deleteAuthToken ");
    await secureStorage.delete(key: cachedAuthTokenKey);
  }

  Future<String> setAuthToken(String authToken) async {
    if (authToken.isEmpty) return Future.value("");
    debugPrint("FLUTTER_CORE :: HIVE :: setAuthToken => ${authToken}");
    await secureStorage.write(key: cachedAuthTokenKey, value: authToken);
    return authToken;
  }

  /// SIGN IN METHOD
  String getRecentlySignInMethod() {
    debugPrint("FLUTTER_CORE :: HIVE :: RecentlySignInMethod");
    return recentlySignInMethodBox.get(recentlySignInMethodBoxKey, defaultValue: "")
    as String;
  }

  Future<void> setRecentlySignInMethod(String recentlySignInMethod) async {
    debugPrint(
        "FLUTTER_CORE :: HIVE :: recentlySignInMethod -> $recentlySignInMethod");
    await recentlySignInMethodBox.put(recentlySignInMethodBoxKey, recentlySignInMethod);
  }

  /// TEST
  HiveTestModel get hiveTestModel =>
      hiveTestModelBox.get(hiveTestModelKey) as HiveTestModel;

  setHiveTestModel() async =>
      hiveTestModelBox.put(hiveTestModelKey,
          HiveTestModel("testModel", "testDescription", ["0", "1", "2"]));
}