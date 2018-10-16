import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// 类名：缓存服务
/// 用途：用户本地缓存各类数据
class CacheService {

  /// 方法：存储
  /// @param key 键
  /// @param value 值
  static save(String key, value) async {
    final storage = new FlutterSecureStorage();

    await storage.write(key: key, value: value);
  }

  /// 方法：取值
  /// @param key 键
  /// @return 值
  static Future<dynamic> get(String key) async {
    final storage = new FlutterSecureStorage();

    return await storage.read(key: key);
  }

  /// 方法：移除
  /// @param key 键
  static remove(String key) async {
    final storage = new FlutterSecureStorage();

    await storage.delete(key: key);
  }
}