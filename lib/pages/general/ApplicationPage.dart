
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/routes/Routes.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

//类名：应用启动页面
class ApplicationPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new ApplicationPageState();
  }

}

class ApplicationPageState extends State<ApplicationPage>{

  ApplicationPageState() {
    final router = new Router();
    Routes.configureRoutes(router);

    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = new MaterialApp(
      title: GeneralConstants.CONSTANT_COMMON_APPLICATION_TITLE,
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: ColorStyle.COLOR_PRIMARY_SWATCH
      ),
      onGenerateRoute: Application.router.generator,
    );

    Logger.root.fine(GeneralConstants.CONSTANT_COMMON_LOG_APPLICATION_LAUNCH_PROMPT);

    return app;
  }

}