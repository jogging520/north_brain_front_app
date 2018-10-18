
import 'dart:async';

import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/general/Token.dart';
import 'package:north_brain_front_app/shared/services/general/CacheService.dart';

class TokenService {

  //方法：获取token值
  static Future<Token> getToken() async {
    Token token = await CacheService.get(GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN);

    return token;
  }

  //方法：设置token
  static setToken(Token token) async {
    await CacheService.save(GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN, token);
  }
}