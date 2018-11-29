
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class TradeItemWidget extends StatelessWidget {
  final int index;
  final Trade trade;

  TradeItemWidget(this.index, this.trade);

  final columnProperties = [.3, .3, .25];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {CommonService.hint('--------dddd');},
      child: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * columnProperties[0],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text((index+1).toString(),
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(fontWeightDelta: 2)),
                  Padding(padding: const EdgeInsets.only(right: 7.0)),
                  Image.asset(ImageStyle.IMAGE_TRADE,
                    width: 28.0,
                    height: 28.0,),
                  Padding(padding: const EdgeInsets.only(right: 7.0)),
                  Text(trade.name,
                      style: Theme.of(context).textTheme.body2),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * columnProperties[1],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('人民币',
                    style: Theme.of(context).textTheme.body2,
                  ),
                  Padding(padding: const EdgeInsets.only(bottom: 4.0)),
                  Text('交易量',
                    style: Theme.of(context).textTheme.body2
                        .apply(color: Theme.of(context).hintColor),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * columnProperties[2],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(trade.price.toString()),
                  Padding(padding: const EdgeInsets.only(bottom: 4.0)),
                  Text('上涨'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}