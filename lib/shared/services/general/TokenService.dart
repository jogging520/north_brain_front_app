
import 'dart:async';
import 'dart:convert';

import 'package:logging/logging.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';
import 'package:north_brain_front_app/shared/services/general/CacheService.dart';

//类名：token服务
class TokenService {

  //方法：获取token值
  static Future<Token> getToken() async {
    String token = await CacheService.get(GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN);

    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_TOKEN_GET_PROMPT}$token');

    if (token != null) {
      return Token.fromJson(json.decode(token));
    }

    return null;
  }

  //方法：设置token
  static Future<bool> saveToken(Token token) async {
    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_TOKEN_SAVE_PROMPT}${token.toJson()}');

    return await CacheService.save(GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN, json.encode(token));
  }

  //方法：清除token
  static Future<bool> deleteToken() async {
    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_TOKEN_DELETE_PROMPT}');

    return await CacheService.remove(GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN);
  }
}