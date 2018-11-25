
import 'package:flutter/material.dart';

class TradeHeaderWidget extends StatelessWidget {
  final int total;

  TradeHeaderWidget(this.total);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Theme.of(context).accentTextTheme.body2.color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '总量$total',
                style: Theme.of(context).textTheme.body2.apply(
                    color: Theme.of(context).hintColor
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0),
              ),
              Text(
                '24小时交易量',
                style: Theme.of(context).textTheme.body2.apply(
                    color: Theme.of(context).hintColor
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.0),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '市场',
                style: Theme.of(context).textTheme.body2.apply(
                    fontSizeFactor: 1.2,
                    fontWeightDelta: 2
                ),
              ),
              Text(
                '北脑',
                style: Theme.of(context).textTheme.body2.apply(
                    fontSizeFactor: 1.2,
                    fontWeightDelta: 2
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}