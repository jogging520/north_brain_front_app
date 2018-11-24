
import 'dart:convert';

import 'package:logging/logging.dart';

import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

//类名：属性设置服务
class SettingService {

  //方法：获取属性设置值
  static Future<Setting> getSetting() async {
    String setting = await CacheService.get(GeneralConstants.CONSTANT_COMMON_CACHE_SETTING);

    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_SETTING_GET_PROMPT}$setting');

    if (setting != null) {
      return Setting.fromJson(json.decode(setting));
    }

    return null;
  }

  //方法：设置属性
  static Future<bool> saveSetting(Setting setting) async {
    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_SETTING_SAVE_PROMPT}${setting.toJson()}');

    return await CacheService.save(GeneralConstants.CONSTANT_COMMON_LOG_SETTING_GET_PROMPT, json.encode(setting));
  }

  //方法：清除属性设置
  static Future<bool> deleteSetting() async {
    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_SETTING_DELETE_PROMPT}');

    return await CacheService.remove(GeneralConstants.CONSTANT_COMMON_LOG_SETTING_GET_PROMPT);
  }
}