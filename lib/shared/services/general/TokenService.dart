
import 'dart:async';

import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/general/Token.dart';
import 'package:north_brain_front_app/shared/services/general/CacheService.dart';
import 'package:north_brain_front_app/shared/services/general/LogService.dart';

//类名：token服务
class TokenService {

  //方法：获取token值
  static Future<Token> getToken() async {
    Token token = await CacheService.get(GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN);

    LogService.debug(GeneralConstants.CONSTANT_COMMON_LOG_TOKEN_GET_PROMPT);
    LogService.debug(token);

    return token;
  }

  //方法：设置token
  static setToken(Token token) async {
    LogService.debug(GeneralConstants.CONSTANT_COMMON_LOG_TOKEN_SET_PROMPT);
    LogService.debug(token);

    await CacheService.save(GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN, token);
  }
}