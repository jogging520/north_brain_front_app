
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class OrderItemWidget extends StatelessWidget {
  final Order order;

  const OrderItemWidget({Key key, this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        color: Theme.of(context).cardColor,
        child: Text(order.name),
      ),
    );
  }

}