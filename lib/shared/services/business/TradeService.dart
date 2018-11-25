
import 'package:north_brain_front_app/shared/common/Common.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class TradeService {
  Future<dynamic> queryTrades({Map<String, dynamic> conditions}) async {
    await CommonService.setSerialNo();

    return [
      Trade('1', '玉米', '粮食', 3.22),
      Trade('2', '高粱', '粮食', 8.22),
      Trade('3', '土豆', '粮食', 22.11),
      Trade('4', '西红柿', '蔬菜', 3.39),
      Trade('5', '大豆', '粮食', 2.78),
      Trade('6', '小麦', '粮食', 10.22),
      Trade('7', '大米', '粮食', 21.22),
      Trade('8', '茄子', '蔬菜', 37.22),
      Trade('9', '辣椒', '蔬菜', 2.22),
      Trade('10', '黄瓜', '粮食', 12.22),
      Trade('11', '丝瓜', '粮食', 31.22),
      Trade('12', '番瓜', '粮食', 49.92),
      Trade('13', '红薯', '粮食', 24.44),
      Trade('14', '包菜', '蔬菜', 8.77),
    ];

    //return HttpClient.get('${GeneralConstants.CONSTANT_COMMON_HTTP_BASE_URL}${GeneralConstants.CONSTANT_COMMON_ROUTE_PATH_TRADE}',
    //    conditions);
  }
}