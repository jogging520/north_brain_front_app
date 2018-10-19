

import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/CommonService.dart';

//类名：日志服务类
class LogService {
  //方法：error级别
  static error(dynamic content) {
    if (content == null) {
      return;
    }

    DateTime current = CommonService.currentDate();

    if (GeneralConstants.CONSTANT_COMMON_LOG_LEVEL == LogLevel.ERROR) {
      print('$current:$content');
    }
  }

  //info级别
  static info(dynamic content) {
    if (content == null) {
      return;
    }

    DateTime current = CommonService.currentDate();

    if (GeneralConstants.CONSTANT_COMMON_LOG_LEVEL == LogLevel.ERROR ||
        GeneralConstants.CONSTANT_COMMON_LOG_LEVEL == LogLevel.INFO
    ) {
      print('$current:$content');
    }
  }

  //debug级别
  static debug(dynamic content) {
    if (content == null) {
      return;
    }

    DateTime current = CommonService.currentDate();

    if (GeneralConstants.CONSTANT_COMMON_LOG_LEVEL == LogLevel.ERROR ||
        GeneralConstants.CONSTANT_COMMON_LOG_LEVEL == LogLevel.INFO ||
        GeneralConstants.CONSTANT_COMMON_LOG_LEVEL == LogLevel.DEBUG) {
      print('$current:$content');
    }
  }
}