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
    // await Hive.openBox(deviceKey);
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

  Box get deviceBox => Hive.box(deviceKey);
  //
  // Box<List<String>> get franchiseOrderTypesBox =>
  //     Hive.box<List<String>>(franchiseOrderTypesKey);
  //
  // Box<String> get selectedOrderTypeBox =>
  //     Hive.box<String>(selectedOrderTypeKey);

  Box get hiveTestModelBox => Hive.box<HiveTestModel>(hiveTestModelKey);

  // Box get ttlBox => Hive.box(ttlBoxKey);
  //
  // Box<bool> get isConfirmDauGiftTermsBox =>
  //     Hive.box<bool>(isConfirmDauGiftTermsKey);
  //
  // Box<String> get appNoticeNotViewedTodayBox =>
  //     Hive.box<String>(isAppNoticeNotViewedTodayKey);


  /// AUTH
  Future<String> getAuthToken() async {
    debugPrint("FLUTTER_CORE :: HIVE :: getAuthToken ");
    return await secureStorage.read(key: cachedAuthTokenKey) ?? "";
  }

  Future<void> deleteAuthToken() async {
    debugPrint("FLUTTER_CORE :: HIVE :: deleteAuthToken ");
    // deviceBox.delete(lastRefreshTimeKey);
    await secureStorage.delete(key: cachedAuthTokenKey);
  }

  Future<String> setAuthToken(String authToken) async {
    if (authToken.isEmpty) return Future.value("");
    // deviceBox.put(lastRefreshTimeKey, DateTime.now());
    debugPrint("FLUTTER_CORE :: HIVE :: setAuthToken => ${authToken}");
    await secureStorage.write(key: cachedAuthTokenKey, value: authToken);
    return authToken;
  }

  /// TEST
  HiveTestModel get hiveTestModel =>
      hiveTestModelBox.get(hiveTestModelKey) as HiveTestModel;

  setHiveTestModel() async =>
      hiveTestModelBox.put(hiveTestModelKey,
          HiveTestModel("testModel", "testDescription", ["0", "1", "2"]));
}