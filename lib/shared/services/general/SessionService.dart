
import 'package:north_brain_front_app/shared/services/general/CommonService.dart';

class SessionService {
  Future<dynamic> login({String userName, String password, String mobile}) async {
    String serialNo = await CommonService.getSerialNo();

    if (serialNo == null) {
      await CommonService.setSerialNo();
    }
  }
}