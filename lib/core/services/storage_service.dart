import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();
  static const String tokenKey = "token";

  Future<void> saveToken(String token) async {
    await secureStorage.write(key: tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await secureStorage.read(key: tokenKey);
  }

  Future<void> clearStorage() async {
    await secureStorage.deleteAll();
  }
}
