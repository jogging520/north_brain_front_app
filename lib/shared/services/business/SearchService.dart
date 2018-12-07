
import 'package:north_brain_front_app/shared/common/Common.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class SearchService {
  Future<dynamic> querySummaries({Map<String, dynamic> conditions}) async {
    await CommonService.setSerialNo();

    return [
      Summary('1', 'abc', 'common'),
      Summary('2', 'abcd', 'common'),
      Summary('3', 'abcde', 'common'),
    ];
    
    //return HttpClient.get('${GeneralConstants.CONSTANT_COMMON_HTTP_BASE_URL}${GeneralConstants.CONSTANT_COMMON_ROUTE_PATH_SUMMARY}',
    //    conditions);
  }
}