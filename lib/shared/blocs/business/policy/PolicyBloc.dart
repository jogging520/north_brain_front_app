
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/policy/Policy.dart';
import 'package:north_brain_front_app/shared/models/business/Policy.dart';
import 'package:north_brain_front_app/shared/services/business/BusinessService.dart';

class PolicyBloc extends Bloc<PolicyEvent, PolicyState> {
  final PolicyService _policyService = PolicyService();

  @override
  PolicyState get initialState => PolicyState.initial();

  @override
  Stream<PolicyState> mapEventToState(PolicyState state, PolicyEvent event) async* {
    if (event is InitialWidget) {
      yield PolicyState.loading();

      List<Policy> policies = await _queryPolicies(type: event.type);

      yield PolicyState.success(policies);
    }

    if (event is SearchButtonPressed) {
      yield PolicyState.loading();

      List<Policy> policies = await _queryPolicies(
          type: event.type,
          name: event.name,
          description: event.description
      );

      yield PolicyState.success(policies);
    }
  }

  Future<List<Policy>> _queryPolicies({
    String type,
    String name,
    String description
  }) async {
    return _policyService.queryPolicies(type: type, name: name, description: description);
  }

}