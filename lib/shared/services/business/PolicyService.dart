
import 'package:north_brain_front_app/shared/common/Common.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/models/business/Policy.dart';

class PolicyService {
  Future<List<Policy>> queryPolicies({
    String type,
    String name,
    String description
  }) async {
    return null;
  }

  Future<Policy> queryPolicyById(String id) async {
    return HttpClient.get('${GeneralConstants.CONSTANT_COMMON_HTTP_BASE_URL}${GeneralConstants.CONSTANT_COMMON_ROUTE_PATH_POLICY}'
        , {'id': id})
        .then((json) => Policy.fromJson(json));
  }
}