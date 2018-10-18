import 'dart:async';
import 'dart:collection';
import 'dart:typed_data';
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/general/Token.dart';
import 'package:north_brain_front_app/shared/services/general/CacheService.dart';
import 'package:north_brain_front_app/shared/services/general/LogService.dart';
import 'package:north_brain_front_app/shared/services/general/TokenService.dart';
import 'package:uuid/uuid.dart';
import "package:pointycastle/pointycastle.dart";


/// 类名：通用工具类
/// 用途：常用的工具、静态方法的集合
class CommonService {

  //方法：提示信息，通过android、ios的toast实现。
  static hint(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: GeneralConstants.CONSTANT_COMMON_HINT_TIME
    );
  }

  /// 方法：设置HTTP头
  static setHeaders(String url) async {
    Map<String, String> headers = new HashMap();

    if (url.indexOf(GeneralConstants.CONSTANT_COMMON_ROUTE_PATH_STORAGE) == -1) {
      headers[GeneralConstants.CONSTANT_COMMON_HTTP_HEADER_CONTENT_TYPE] =
          GeneralConstants.CONSTANT_COMMON_HTTP_HEADER_CONTENT_TYPE_VALUE;
    }

    headers[GeneralConstants.CONSTANT_COMMON_HTTP_HEADER_ACCEPT] =
        GeneralConstants.CONSTANT_COMMON_HTTP_HEADER_ACCEPT_VALUE;

    headers[GeneralConstants.CONSTANT_COMMON_HTTP_HEADER_API_KEY] =
        GeneralConstants.CONSTANT_COMMON_HTTP_HEADER_API_KEY_VALUE;

    Token token = await TokenService.getToken();

    if (token != null && token.jwt != null) {
      headers[GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_TOKEN] =
          token.jwt;
    }

    return headers;
  }

  //方法：根据token中保存的公共信息，形成params对象
  static setParams(Map<String, dynamic> params) async {
    Map<String, String> parameters = new HashMap();

    parameters.addAll(params);

    String serialNo = await getSerialNo();

    if (serialNo != null) {
      parameters[GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_SERIAL_NO] = serialNo;
    }

    parameters[GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_APP_TYPE] =
        GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_APP_TYPE_VALUE;

    parameters[GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_CATEGORY] =
        GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_CATEGORY_VALUE;

    var token = await TokenService.getToken();

    if (token != null && token.session != null) {
      parameters[GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_SESSION] =
          token.session;
    }

    if (token != null && token.user != null) {
      parameters[GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_USER] =
          token.user;
    }

    return parameters;
  }

  //方法：获取当前业务流水号
  static Future<String> getSerialNo() async {
    var serialNo = await CacheService.get(GeneralConstants.CONSTANT_COMMON_CACHE_SERIAL_NO);

    LogService.debug('$GeneralConstants.CONSTANT_COMMON_LOG_SERIAL_NO_PROMPT$serialNo');

    return serialNo;
  }


  //方法：新生成一条业务流水号，并存储在cache中
  static Future<String> setSerialNo() async {
    var uuid = new Uuid();

    String serialNo = uuid.v4();

    await CacheService.save(GeneralConstants.CONSTANT_COMMON_CACHE_SERIAL_NO,
        serialNo);

    LogService.debug('$GeneralConstants.CONSTANT_COMMON_LOG_SERIAL_NO_PROMPT$serialNo');

    return serialNo;
  }

  static Uint8List transformStringToUint8List(String value) =>
      new Uint8List.fromList(utf8.encode(value));

  //方法：加密
  static Future<String> encrypt (String content, bool isTemporary) async {
    RSAPublicKey rsaPublicKey;

    if (isTemporary) {
      rsaPublicKey = new RSAPublicKey(
          BigInt.parse(GeneralConstants.CONSTANT_COMMON_TEMPORARY_PUBLIC_KEY_MODULUS),
          BigInt.parse(GeneralConstants.CONSTANT_COMMON_PUBLIC_KEY_EXPONENT));
    } else {
      Token token = await TokenService.getToken();

      rsaPublicKey = new RSAPublicKey(
          BigInt.parse(token.downPublicKey),
          BigInt.parse(GeneralConstants.CONSTANT_COMMON_PUBLIC_KEY_EXPONENT));
    }

    PublicKeyParameter<RSAPublicKey> publicKeyParameter =
    new PublicKeyParameter<RSAPublicKey>(rsaPublicKey);

    AsymmetricBlockCipher asymmetricBlockCipher =
    new AsymmetricBlockCipher(GeneralConstants.CONSTANT_COMMON_SECURITY_ASYMMETRIC_ALGORITHM);

    asymmetricBlockCipher.reset();
    asymmetricBlockCipher.init(true, publicKeyParameter);

    Uint8List encryptedContent =
    asymmetricBlockCipher.process(transformStringToUint8List(content));

    String encryptedContentString = String.fromCharCodes(encryptedContent);

    LogService.debug('$GeneralConstants.CONSTANT_COMMON_LOG_ENCRYPTED_DATA_PROMPT$encryptedContentString');

    return encryptedContentString;
  }

  //方法：解密
  static Future<String> decrypt(String content) async {
    Token token = await TokenService.getToken();

    RSAPrivateKey rsaPrivateKey = new RSAPrivateKey(
        BigInt.parse(token.upPrivateKeyModulus),
        BigInt.parse(token.upPrivateKeyExponent),
        BigInt.parse(token.upPrivateKeyPrimeP),
        BigInt.parse(token.upPrivateKeyPrimeQ));

    PrivateKeyParameter<RSAPrivateKey> privateKeyParameter =
    new PrivateKeyParameter<RSAPrivateKey>(rsaPrivateKey);

    AsymmetricBlockCipher cipher
    = new AsymmetricBlockCipher(GeneralConstants.CONSTANT_COMMON_SECURITY_ASYMMETRIC_ALGORITHM);

    cipher.reset();
    cipher.init(true, privateKeyParameter);

    Uint8List decryptedContent =
    cipher.process(transformStringToUint8List(content));

    String decryptedContentString = String.fromCharCodes(decryptedContent);

    LogService.debug('$GeneralConstants.CONSTANT_COMMON_LOG_DECRYPTED_DATA_PROMPT$decryptedContentString');

    return decryptedContentString;
  }

  //方法：错误处理
  static handleError(error) {
    if (error == null && error.statusCode == null) {
      return;
    }

    switch (error.statusCode) {
      case 200:
        break;
      case 401:
        hint(GeneralConstants.CONSTANT_COMMON_DEFAULT_ERROR);
        break;
      case 505:
        hint(GeneralConstants.CONSTANT_COMMON_DEFAULT_ERROR);
        break;
      default:
        hint(GeneralConstants.CONSTANT_COMMON_DEFAULT_ERROR);
        break;
    }
  }

  //方法：获取当前时间的值
  static DateTime currentDate() {
    DateTime now = new DateTime.now();

    return now;
  }

  //方法：获取前一天时间的值
  static DateTime beforeDate() {
    DateTime now = new DateTime.now();

    return new DateTime(now.year, now.month, now.day - 1, now.hour, now.minute,
      now.second, now.millisecond, now.microsecond);
  }

}