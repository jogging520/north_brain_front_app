import 'dart:async';

import 'package:dio/dio.dart';
import 'package:connectivity/connectivity.dart';
import 'package:north_brain_front_app/shared/common/Common.dart';
import 'package:north_brain_front_app/shared/constants/Constants.dart';

/// 类名：http连接类
/// 用途：用于通用的http请求，包括GET、POST、DELETE、PUT等操作，用统一的拦截器加载通用的option
class HttpClient {

  static get(String url, params, Options options) async {
    //检查网络是否连通
    var connectivityResult = await (new Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      Common.hint(Constants.CONSTANT_COMMON_NETWORK_CONNECTIVITY_NONE_HINT);
      throw new FormatException(Constants.CONSTANT_COMMON_NETWORK_CONNECTIVITY_NONE_HINT);
    }

    //设置header
    var headers = await Common.setHeaders();

    Dio dio = new Dio();
    dio.interceptor.request.onSend = (Options options) {

      options.headers = headers;
      options.connectTimeout = Constants.CONSTANT_COMMON_HTTP_REQUEST_TIMEOUT;

      return options;
    };

    dio.interceptor.response.onError = (DioError dioError) {
      return dioError;
    };

    //设置拦截器
  }
}