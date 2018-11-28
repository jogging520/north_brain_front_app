import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/pages/general/ApplicationPage.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:logging/logging.dart';
import 'package:flutter_amap/flutter_amap.dart';

void main(){
  debugPaintSizeEnabled = GeneralConstants.CONSTANT_COMMON_APPLICATION_DEBUG_PAINT_SIZE_ENABLED;      //打开视觉调试开关
  _initLogging();

  final AuthenticationBloc _authenticationBloc = AuthenticationBloc();
  _authenticationBloc.onApplicationStart();

  FlutterAmap.setApiKey("1d54cf0e4dac3ed6da30cbad7627dcdd");

  runApp(
      BlocProvider<AuthenticationBloc> (
        bloc: _authenticationBloc,
        child: ApplicationPage(),
      ));
}

void _initLogging() {
  Logger.root.level = Level.ALL;  //生产系统中要修改为：FINEST

  Logger.root.onRecord.listen((LogRecord logRecord) {
    print('''${logRecord.level.name}: ${logRecord.time}: ${logRecord.loggerName}: ${logRecord.sequenceNumber}: ${logRecord.message}''');
  });
}