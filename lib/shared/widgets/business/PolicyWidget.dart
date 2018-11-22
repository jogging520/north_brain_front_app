
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/policy/Policy.dart';

class PolicyWidget extends StatelessWidget {
  final PolicyBloc _policyBloc;

  const PolicyWidget({
    Key key,
    @required PolicyBloc policyBloc})
      :
        _policyBloc = policyBloc,
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PolicyEvent, PolicyState>(
      bloc: _policyBloc,
      builder: (BuildContext context, PolicyState policyState) {

      },
    );
  }

  Widget _policyCards() {
    return Card(
      child: Text('abcd'),
    );
  }
}