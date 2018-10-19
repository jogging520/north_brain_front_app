import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/route/RouteHandlers.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/CommonService.dart';

//类名：路由类
class Routes{
  static const String ROUTE_ROOT = '/';
  static const String ROUTE_PRICE = '/price';

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        CommonService.hint(GeneralConstants.CONSTANT_COMMON_PAGE_ROUTE_NOT_FOUND_ERROR);
      }
    );
    
    router.define(ROUTE_ROOT, handler: rootHandler);
  }
}