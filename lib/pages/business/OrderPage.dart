
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/widgets/business/order/Order.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('订单列表'),
      ),
      body: OrderWidget(),
      resizeToAvoidBottomPadding: false,
    );
  }

}