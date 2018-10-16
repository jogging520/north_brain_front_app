import 'dart:async';

import 'package:dio/dio.dart';
import 'package:connectivity/connectivity.dart';
import 'package:north_brain_front_app/shared/services/general/CommonService.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';

enum _HttpMethod {
  get,
  post,
  delete,
  put,
  options
}

/// 类名：http连接类
/// 用途：用于通用的http请求，包括GET、POST、DELETE、PUT等操作，用统一的拦截器加载通用的option
class HttpClient {

  static get(String url, Map<String, dynamic> params, Options options) async {
    //检查网络是否连通
    var connectivityResult = await (new Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      CommonService.hint(GeneralConstants.CONSTANT_COMMON_NETWORK_CONNECTIVITY_NONE_HINT);
      throw new FormatException(GeneralConstants.CONSTANT_COMMON_NETWORK_CONNECTIVITY_NONE_HINT);
    }

    //设置header
    var headers = await CommonService.setHeaders(url);
    var parameters = await CommonService.setParams(params);

    Dio dio = new Dio();

    //设置拦截器
    dio.interceptor.request.onSend = (Options options) {
      options.headers = headers;
      options.connectTimeout = GeneralConstants.CONSTANT_COMMON_HTTP_REQUEST_TIMEOUT;

      return options;
    };

    
  }
}