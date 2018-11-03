
import 'package:north_brain_front_app/shared/common/HttpClient.dart';
import 'package:north_brain_front_app/shared/models/general/Token.dart';
import 'package:north_brain_front_app/shared/models/general/Operation.dart';
import 'package:north_brain_front_app/shared/services/general/CommonService.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/TokenService.dart';

class OperationService {

  ///方法：创建一条业务操作记录
  Future<Operation> createOperation(String businessType, {String serialNo}) async {
    String id = serialNo ?? await CommonService.setSerialNo();
    Token token = await TokenService.getToken();

    Operation operation = Operation(
        id,
        GeneralConstants.CONSTANT_MODULE_SHARED_MODEL_OPERATION_TYPE,
        GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_APP_TYPE_VALUE,
        GeneralConstants.CONSTANT_COMMON_HTTP_PARAM_PUBLIC_CATEGORY_VALUE,
        token.user,
        token.session,
        businessType,
        CommonService.currentDate(),
        CommonService.currentDate(),
        GeneralConstants.CONSTANT_MODULE_SHARED_MODEL_OPERATION_STATUS_ACTIVE,
        description: GeneralConstants.CONSTANT_MODULE_SHARED_MODEL_OPERATION_DESCRIPTION
    );
    
    return HttpClient
        .post(GeneralConstants.CONSTANT_COMMON_HTTP_BASE_URL, null, body: operation)
        .then((json) => Operation.fromJson(json));
  }

  ///方法：按照条件查询操作记录
  Future<dynamic> queryOperations({Map<String, dynamic> conditions}) async {
    await CommonService.setSerialNo();

    return HttpClient
        .get(GeneralConstants.CONSTANT_COMMON_HTTP_BASE_URL, conditions);
  }
}