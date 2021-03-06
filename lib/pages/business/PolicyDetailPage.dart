
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/blocs/business/policy/detail/PolicyDetail.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';

class PolicyDetailPage extends StatelessWidget {
  final String id;

  PolicyDetailPage(this.id);

  final PolicyDetailBloc _policyDetailBloc = PolicyDetailBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('政策信息'),
      ),
      body: PolicyDetailWidget(id: id, policyDetailBloc: _policyDetailBloc),
      resizeToAvoidBottomPadding: false,
    );
  }

}