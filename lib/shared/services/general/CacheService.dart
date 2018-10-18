import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/LogService.dart';

/// 类名：缓存服务
/// 用途：用户本地缓存各类数据
class CacheService {

  /// 方法：存储
  /// @param key 键
  /// @param value 值
  static save(String key, value) async {
    final storage = new FlutterSecureStorage();

    LogService.debug(GeneralConstants.CONSTANT_COMMON_LOG_CACHE_SAVE_PROMPT);
    LogService.debug(key);
    LogService.debug(value);

    await storage.write(key: key, value: value);
  }

  /// 方法：取值
  /// @param key 键
  /// @return 值
  static Future<dynamic> get(String key) async {
    final storage = new FlutterSecureStorage();

    dynamic value = await storage.read(key: key);

    LogService.debug(GeneralConstants.CONSTANT_COMMON_LOG_CACHE_GET_PROMPT);
    LogService.debug(key);
    LogService.debug(value);

    return value;
  }

  /// 方法：移除
  /// @param key 键
  static remove(String key) async {
    final storage = new FlutterSecureStorage();

    LogService.debug(GeneralConstants.CONSTANT_COMMON_LOG_CACHE_DELETE_PROMPT);
    LogService.debug(key);

    await storage.delete(key: key);
  }
}