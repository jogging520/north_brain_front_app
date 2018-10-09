import 'dart:collection';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:north_brain_front_app/shared/constants/Constants.dart';

/// 类名：通用工具类
/// 用途：常用的工具、静态方法的集合
class Common {

  static hint(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: Constants.CONSTANT_COMMON_HINT_TIME
    );
  }

  /// 方法：设置HTTP头
  static setHeaders() async {
    Map<String, String> headers = new HashMap();

    headers[Constants.CONSTANT_COMMON_HTTP_REQUEST_HEADER_CONTENT_TYPE_NAME] =
        Constants.CONSTANT_COMMON_HTTP_REQUEST_HEADER_CONTENT_TYPE_VALUE;

    return headers;
  }

}