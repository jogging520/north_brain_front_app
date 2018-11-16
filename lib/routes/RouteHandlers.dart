
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/pages/business/home/HomePage.dart';
import 'package:north_brain_front_app/pages/business/product/ProductPage.dart';


var rootHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    HomePage.role.contains('admin');

    return HomePage();
  }
);

var productHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return ProductPage();
    }
);
