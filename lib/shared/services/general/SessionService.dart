
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

    return HttpClient
        .post('${GeneralConstants.CONSTANT_COMMON_HTTP_BASE_URL}login',
        {'userName': userName, 'password': password, 'mobile': null})
        .then((json) => Token.fromJson(json));
  }
}