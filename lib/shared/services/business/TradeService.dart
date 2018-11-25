
import 'package:north_brain_front_app/shared/common/Common.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class TradeService {
  Future<dynamic> queryTrades({Map<String, dynamic> conditions}) async {
    await CommonService.setSerialNo();

    return HttpClient.get('${GeneralConstants.CONSTANT_COMMON_HTTP_BASE_URL}${GeneralConstants.CONSTANT_COMMON_ROUTE_PATH_TRADE}',
        conditions);
  }
}