
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class OrderHeaderWidget extends StatelessWidget {
  final String month;

  const OrderHeaderWidget({Key key, this.month}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      color: ColorStyle.COLOR_COMMON_ORDER_HEADER,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                month.substring(0, 2) + '月',
                style: Theme.of(context).textTheme.body2.copyWith(
                    color: Theme.of(context).cardColor
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}