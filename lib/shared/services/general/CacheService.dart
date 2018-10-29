import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logging/logging.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';

/// 类名：缓存服务
/// 用途：用户本地缓存各类数据
class CacheService {

  /// 方法：存储
  /// @param key 键
  /// @param value 值
  static Future<bool> save(String key, value) async {
    if (key == null || key == '' || value == null) {
      return false;
    }

    final storage = new FlutterSecureStorage();

    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_CACHE_SAVE_PROMPT}$key, $value');

    await storage.write(key: key, value: value);

    return true;
  }

  /// 方法：取值
  /// @param key 键
  /// @return 值
  static Future<dynamic> get(String key) async {
    if (key == null || key == '') {
      return null;
    }

    final storage = new FlutterSecureStorage();

    dynamic value = await storage.read(key: key);

    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_CACHE_GET_PROMPT}$key, $value');

    return value;
  }

  /// 方法：移除
  /// @param key 键
  static Future<bool> remove(String key) async {
    if (key == null || key == '') {
      return false;
    }

    final storage = new FlutterSecureStorage();

    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_CACHE_DELETE_PROMPT}$key');

    await storage.delete(key: key);

    return true;
  }
}