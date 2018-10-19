import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;//调试模式，正式关闭
import 'package:north_brain_front_app/pages/general/ApplicationPage.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';

void main(){
  debugPaintSizeEnabled = GeneralConstants.CONSTANT_COMMON_APPLICATION_DEBUG_PAINT_SIZE_ENABLED;      //打开视觉调试开关
  runApp(new ApplicationPage());
}
