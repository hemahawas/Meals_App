import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class LocalStorageService extends GetxService {
  late FlutterSecureStorage _secureStorage;
  @override
  void onInit() {
    super.onInit();
    _secureStorage = FlutterSecureStorage();
  }

  Future<void> saveString(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> getString({required String key}) async {
    return _secureStorage.read(key: key);
  }
}
