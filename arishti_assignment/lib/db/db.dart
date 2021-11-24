import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DB {
  Future<void> initDatabase() async {
    await Hive.deleteFromDisk();
    await Hive.initFlutter();

    const FlutterSecureStorage secureStorage = FlutterSecureStorage();
    var containsEncryptionKey = await secureStorage.containsKey(key: 'key');
    if (!containsEncryptionKey) {
      var key = Hive.generateSecureKey();
      await secureStorage.write(key: 'key', value: base64UrlEncode(key));
    }

    var encryptionKey =
        base64Url.decode((await secureStorage.read(key: 'key'))!);
    await Hive.openBox('user', encryptionCipher: HiveAesCipher(encryptionKey));
  }

  void closeDatabase() async {
    await Hive.box('user').compact();
    await Hive.close();
  }

  Future<void> storeUserCredentials(String? phoneNumber, String? passwd) async {
    final box = Hive.box('user');
    await box.putAll({'phNoLogin': phoneNumber, 'passwd': passwd});
  }

  Future<void> storeUserFormData(String? name, String? contactNumber,
      String? email, String? address, String? city, String? state) async {
    final box = Hive.box('user');
    await box.putAll({
      'name': name,
      'contactNo': contactNumber,
      'email': email,
      'address': address,
      'city': city,
      'state': state
    });
  }

  Future<bool> isLogin() async {
    
    final box = Hive.box('user');
    final output = box.get('phNoLogin') != null;
    return output;
  }

  Future<bool> isSubmitted() async {
    final box = Hive.box('user');
    final output = box.get('email') != null;
    return output;
  }

  Future<void> logOut() async {
    final box = Hive.box('user');
    await box.delete('token');
    await box.delete('role');
    await box.delete('id');
  }
}
