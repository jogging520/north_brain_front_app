import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/routes/RouteHandlers.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/CommonService.dart';

//类名：路由类
class Routes{
  static const String ROUTE_ROOT = '/';
  static const String ROUTE_LOGIN = '/login';
  static const String ROUTE_PRICE = '/price/:id';
  static const String ROUTE_PRODUCT = '/product';
  static const String ROUTE_PRODUCT_DETAIL = '/product/:id';
  static const String ROUTE_PROFILE = '/profile';
  static const String ROUTE_SETTING = '/setting';
  static const String ROUTE_POLICY = '/policy';
  static const String ROUTE_POLICY_DETAIL = '/policy/:id';
  static const String ROUTE_TRADE = '/trade';

  static void configureRoutes(Router router) async {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        CommonService.prompt(
            context,
            GeneralConstants.CONSTANT_COMMON_PAGE_ROUTE_NOT_FOUND_TITLE,
            GeneralConstants.CONSTANT_COMMON_PAGE_ROUTE_NOT_FOUND_ERROR);
      }
    );

    //在这个地方增加权限的限制（只通过角色来判断？）
    router.define(ROUTE_ROOT, handler: rootHandler);
    router.define(ROUTE_LOGIN, handler: loginHandler);
    router.define(ROUTE_PRODUCT, handler: productHandler);
    router.define(ROUTE_PRODUCT_DETAIL, handler: productDetailHandler);
    router.define(ROUTE_PROFILE, handler: profileHandler);
    router.define(ROUTE_SETTING, handler: settingHandler);
    router.define(ROUTE_POLICY, handler: policyHandler);
    router.define(ROUTE_POLICY_DETAIL, handler: policyDetailHandler);
    router.define(ROUTE_TRADE, handler: tradeHandler);
  }
}