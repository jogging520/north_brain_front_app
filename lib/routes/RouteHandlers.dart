
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/pages/business/HomePage.dart';


var rootHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    HomePage.role.contains('admin');

    return new HomePage();
  }
);
