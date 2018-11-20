
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/pages/business/home/HomePage.dart';
import 'package:north_brain_front_app/pages/business/product/ProductPage.dart';
import 'package:north_brain_front_app/pages/general/ProfilePage.dart';


var rootHandler = Handler(
  //type: HandlerType.function,
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    HomePage.role.contains('admin');

    return HomePage();
  }
);

var productHandler = Handler(
  //type: HandlerType.function,
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    HomePage.role.contains('admin');

    return ProductPage();
  }
);

var profileHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return ProfilePage();
    }
);
