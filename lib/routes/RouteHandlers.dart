import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/pages/business/BusinessPage.dart';
import 'package:north_brain_front_app/pages/general/GeneralPage.dart';


var rootHandler = Handler(
  //type: HandlerType.function,
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    HomePage.role.contains('admin');

    return HomePage();
  }
);

var loginHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return LoginPage();
    }
);

var productHandler = Handler(
  //type: HandlerType.function,
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    HomePage.role.contains('admin');

    return ProductPage();
  }
);

var productDetailHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return ProductDetailPage(id: params['id'][0]);
    }
);

var profileHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return ProfilePage();
    }
);

var settingHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return SettingPage();
    }
);

var policyHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return PolicyPage();
    }
);



var policyDetailHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return PolicyDetailPage(params['id'][0]);
    }
);

var tradeHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return TradePage();
    }
);

var stationHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return StationPage();
    }
);

var testHandler = Handler(
  //type: HandlerType.function,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      HomePage.role.contains('admin');

      return TestPage();
    }
);

