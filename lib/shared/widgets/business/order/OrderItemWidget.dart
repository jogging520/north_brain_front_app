
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
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
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 1.0),
        decoration: BoxDecoration(
          color: ColorStyle.COLOR_COMMON_ORDER_ITEM_BACKGROUND,
          border: Border(
            left: BorderSide(
              width: 4.0,
              color: ColorStyle.COLOR_COMMON_ORDER_ITEM_BORDER
            )
          )
        ),
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                  Icons.add_circle,
                  color: Colors.green,
                  size: 28.0),
              Text(
                order.name,
                style: Theme.of(context).textTheme.body2.apply(fontWeightDelta: 2),
              ),
              Icon(
                  Icons.chevron_right
              ),
            ],
          ),
        ),
      )
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