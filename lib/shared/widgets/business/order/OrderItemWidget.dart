
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/widgets/business/order/Order.dart';

class OrderItemWidget extends StatelessWidget {
  final Order order;

  const OrderItemWidget({Key key, this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showOrderResult(context);
      },
      child: Card(
        elevation: 2.0,
        child: ListTile(
          isThreeLine: false,
          leading: Icon(
              Icons.add_circle,
              color: Colors.green,
              size: 28.0),
          title: RichText(
            text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: order.name,
                    style: Theme.of(context).textTheme.body2.apply(fontWeightDelta: 2),
                  ),
                  TextSpan(
                    text: order.id,
                    style: Theme.of(context).textTheme.body2.apply(fontWeightDelta: 2),
                  ),
                ]
            ),
          ),
          //subtitle: Text('子标题'),
          trailing: Icon(
              Icons.chevron_right
          ),
        ),
      ),
    );
  }

  void _showOrderResult(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return OrderResultWidget(order: order);
      }
    );
  }
}