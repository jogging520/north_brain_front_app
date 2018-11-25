
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';

class TradePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TradePageState();
}

class TradePageState extends State<TradePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('交易列表'),
      ),
      body: TradeWidget(),
      floatingActionButton: TransactionWidget(_scaffoldKey),
    );
  }

}