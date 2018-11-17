
import 'package:north_brain_front_app/shared/common/HttpClient.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/general/Token.dart';
import 'package:north_brain_front_app/shared/services/general/CommonService.dart';

class SessionService {
  Future<Token> login({String userName, String password, String mobile}) async {
    String serialNo = await CommonService.getSerialNo();

    if (serialNo == null) {
      await CommonService.setSerialNo();
    }

    String encryptedUserName = await CommonService.encrypt(userName, true);
    String encryptedPassword = await CommonService.encrypt(password, true);

    return HttpClient
        .post('${GeneralConstants.CONSTANT_COMMON_HTTP_BASE_URL}${GeneralConstants.CONSTANT_COMMON_ROUTE_PATH_LOGIN}',
        {GeneralConstants.CONSTANT_MODULE_SHARED_MODEL_SESSION_USERNAME: Uri.encodeComponent(encryptedUserName),
          GeneralConstants.CONSTANT_MODULE_SHARED_MODEL_SESSION_PASSWORD: Uri.encodeComponent(encryptedPassword),
          GeneralConstants.CONSTANT_MODULE_SHARED_MODEL_SESSION_MOBILE: null})
        .then((json) => Token.fromJson(json));
  }

  Future<bool> logout() async {
    await Future.delayed(Duration(seconds: 1));
    return false;
  }
}