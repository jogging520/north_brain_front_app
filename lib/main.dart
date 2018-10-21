import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;//调试模式，正式关闭
import 'package:north_brain_front_app/pages/general/ApplicationPage.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:logging/logging.dart';

void main(){
  debugPaintSizeEnabled = GeneralConstants.CONSTANT_COMMON_APPLICATION_DEBUG_PAINT_SIZE_ENABLED;      //打开视觉调试开关

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord logRecord) {
    print('${logRecord.level.name}: ${logRecord.time}: ${logRecord.message}');
  });

  runApp(new ApplicationPage());
}
