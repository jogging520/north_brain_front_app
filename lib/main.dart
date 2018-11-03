import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:north_brain_front_app/pages/general/ApplicationPage.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:logging/logging.dart';

void main(){
  debugPaintSizeEnabled = GeneralConstants.CONSTANT_COMMON_APPLICATION_DEBUG_PAINT_SIZE_ENABLED;      //打开视觉调试开关

  _initLogging();

  runApp(new ApplicationPage());
}

_initLogging() {
  Logger.root.level = Level.ALL;  //生产系统中要修改为：FINEST

  Logger.root.onRecord.listen((LogRecord logRecord) {
    print('''${logRecord.level.name}: ${logRecord.time}: ${logRecord.loggerName}: ${logRecord.sequenceNumber}: ${logRecord.message}''');
  });
}