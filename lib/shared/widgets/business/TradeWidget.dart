
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/trade/Trade.dart';

class TradeWidget extends StatelessWidget {

  final TradeBloc _tradeBloc = TradeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TradeEvent, TradeState> (
      bloc: _tradeBloc,
      builder: (BuildContext context, TradeState tradeState) {
        return _sliverList(context, _tradeBloc, tradeState);
      },
    );
  }

  Widget _sliverList(BuildContext context, TradeBloc tradeBloc, TradeState tradeState) {
    return RefreshIndicator(
      onRefresh: () {},
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '总量',
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
              )
            ]
            ),
          ),
          tradeState.trades == null ?
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Container(
                padding: EdgeInsets.all(30.0),
                alignment: Alignment.topCenter,
                child: Text(
                  '未找到数据',
                  style: Theme.of(context).textTheme.caption,
                ),
              )
            ]
            ),
          ) : SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) =>
                Text(
                    index.toString(),
                    style: Theme.of(context).textTheme.caption
                ),
              childCount: 50
            ),
          )
        ],
      ),
    );
  }
}