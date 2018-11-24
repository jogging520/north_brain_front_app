
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/policy/detail/PolicyDetail.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';

class PolicyDetailBloc extends Bloc<PolicyDetailEvent, PolicyDetailState>{

  final PolicyService _policyService = PolicyService();

  @override
  PolicyDetailState get initialState => PolicyDetailState.initial();

  void onWidgetInitialed(String id) {
    dispatch(WidgetInitialed(id));
  }

  @override
  Stream<PolicyDetailState> mapEventToState(PolicyDetailState state, PolicyDetailEvent event) async* {
    if (event is WidgetInitialed) {
      yield PolicyDetailState.loading();

      Policy policy = await _getPolicy(event.id);

      if (policy != null) {
        yield PolicyDetailState.success(policy);
      } else {
        yield PolicyDetailState.failure('加载政策信息失败');
      }
    }
  }

  Future<Policy> _getPolicy(String id) async {
    return _policyService.queryPolicyById(id);
  }

}