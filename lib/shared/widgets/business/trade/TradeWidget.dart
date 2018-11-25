
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:north_brain_front_app/shared/blocs/business/trade/Trade.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';

class TradeWidget extends StatelessWidget {

  final TradeBloc _tradeBloc = TradeBloc();

  @override
  Widget build(BuildContext context) {
    _tradeBloc.onWidgetInitialized();

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
          SliverStickyHeader(
            header: TradeHeaderWidget(200),
            sliver: tradeState.trades == null ?
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
            ) :
            SliverList(
              delegate: SliverChildBuilderDelegate(
                      (context, index) =>
                          TradeItemWidget(index, tradeState.trades[index]),
                  childCount: tradeState.trades.length
              ),
            ),
          ),
        ],
      ),
    );
  }
}