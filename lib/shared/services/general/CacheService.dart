import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

/// 类名：缓存服务
/// 用途：用户本地缓存各类数据
class CacheService {

  /// 方法：存储
  /// @param key 键
  /// @param value 值
  static save(String key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString(key, value);
  }

  /// 方法：取值
  /// @param key 键
  /// @return 值
  static Future<dynamic> get(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    return sharedPreferences.get(key);
  }

  /// 方法：移除
  /// @param key 键
  static remove(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.remove(key);
  }
}