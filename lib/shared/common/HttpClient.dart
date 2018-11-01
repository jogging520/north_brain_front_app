import 'dart:async';

import 'package:dio/dio.dart';
import 'package:connectivity/connectivity.dart';
import 'package:logging/logging.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/CommonService.dart';



/// 类名：http连接类
/// 用途：用于通用的http请求，包括GET、POST、DELETE、PUT等操作，用统一的拦截器加载通用的option
class HttpClient {

  //方法：通用的内部请求方法
  static Future<dynamic> _request(String httpMethod, String url, Map<String, dynamic> params, {dynamic body}) async {

    if (url == null || url == '') {
      return null;
    }

    //检查网络是否连通
    var connectivityResult = await (new Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      CommonService.hint(GeneralConstants.CONSTANT_COMMON_NETWORK_CONNECTIVITY_NONE_HINT);
      throw new FormatException(GeneralConstants.CONSTANT_COMMON_NETWORK_CONNECTIVITY_NONE_HINT);
    }

    //设置header、params、请求方法、超时时间和data
    var headers = await CommonService.setHeaders(url);
    var parameters = await CommonService.setParams(params);

    if (headers == null || parameters == null) {
      return null;
    }

    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_HTTP_REQUEST_PARAMETERS_PROMPT}$parameters');

    Dio dio = new Dio();
    Options options = new Options();
    options.headers = headers;
    options.connectTimeout = GeneralConstants.CONSTANT_COMMON_HTTP_REQUEST_TIMEOUT;
    options.method = httpMethod;


    //设置请求url
    String requestUrl = url + (url.contains("?") ? "&" : "?") +
        Transformer.urlEncodeMap(parameters);

    Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_HTTP_REQUEST_URL_PROMPT}$requestUrl');

    //开始请求，并处理通用异常
    Response response;
    try {
      if (body != null) {
        Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_HTTP_REQUEST_BODY_PROMPT}$body');

        response = await dio.request(requestUrl, data: body, options: options);
      } else {
        response = await dio.request(requestUrl, options: options);
      }

      Logger.root.fine('${GeneralConstants.CONSTANT_COMMON_LOG_HTTP_RESPONSE_BODY_PROMPT}$response');
    } on DioError catch(e) {
      Logger.root.severe(e);

      if (e.response != null) {
        CommonService.handleError(e);
      }
    }

    if (response != null && response.data != null) {
      return response.data;
    }

    return null;
  }

  //方法：get方法
  static Future<dynamic> get(String url, Map<String, dynamic> params) async {
    dynamic response = await _request(GeneralConstants.CONSTANT_COMMON_HTTP_METHOD_GET, url, params);

    return response;
  }

  //方法：post方法
  static Future<dynamic> post(String url, Map<String, dynamic> params, {dynamic body}) async {
    dynamic response = await _request(GeneralConstants.CONSTANT_COMMON_HTTP_METHOD_POST, url, params, body: body);

    return response;
  }

  //方法：put方法
  static Future<dynamic> put(String url, Map<String, dynamic> params, {dynamic body}) async {
    dynamic response = await _request(GeneralConstants.CONSTANT_COMMON_HTTP_METHOD_PUT, url, params, body: body);

    return response;
  }

  //方法：delete方法
  static Future<dynamic> delete(String url, Map<String, dynamic> params, {dynamic body}) async {
    dynamic response = await _request(GeneralConstants.CONSTANT_COMMON_HTTP_METHOD_DELETE, url, params, body: body);

    return response;
  }
}