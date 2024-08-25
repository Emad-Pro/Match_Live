import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> getBoolData({required String key}) async {
    return _sharedPreferences?.getBool(key);
  }

  static Future<dynamic> getData({required String key}) async {
    return _sharedPreferences?.get(key);
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await _sharedPreferences!.setString(key, value);
    } else if (value is int) {
      return await _sharedPreferences!.setInt(key, value);
    } else if (value is bool) {
      return await _sharedPreferences!.setBool(key, value);
    } else if (value is double) {
      return await _sharedPreferences!.setDouble(key, value);
    } else if (value is List<String>) {
      return await _sharedPreferences!.setStringList(key, value);
    } else {
      throw Exception("Unsupported type");
    }
  }

  static Future<bool> removeData({required String key}) async {
    return await _sharedPreferences!.remove(key);
  }

  static Future<Map<String, dynamic>?> readJson({required String key}) async {
    final jsonString = _sharedPreferences?.getString(key);
    if (jsonString == null) return null;
    return json.decode(jsonString) as Map<String, dynamic>?;
  }

  static Future<bool> saveJson({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final jsonString = json.encode(value);
    return await _sharedPreferences!.setString(key, jsonString);
  }

  static Future<bool> clearData({required String key}) async {
    return await _sharedPreferences!.remove(key);
  }
}
