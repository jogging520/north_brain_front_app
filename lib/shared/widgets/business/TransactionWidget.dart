
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/transaction/Transaction.dart';

class TransactionWidget extends StatelessWidget {

  final TransactionBloc _transactionBloc = TransactionBloc();
  final GlobalKey<ScaffoldState> scaffoldKey;

  TransactionWidget(this.scaffoldKey);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<TransactionEvent, TransactionState> (
      bloc: _transactionBloc,
      builder: (BuildContext context, TransactionState transactionState) {
        return _floatingActionButton(context, _transactionBloc, transactionState);
      },
    );
  }

  Widget _floatingActionButton(BuildContext context, TransactionBloc transactionBloc,
      TransactionState transactionState) {
    return transactionState.isBottomSheetOpened ?
    FloatingActionButton(
      onPressed: () => Navigator.of(context).pop(),
      child: Icon(Icons.close),
      foregroundColor: Theme.of(context).primaryColor,
      backgroundColor: Theme.of(context).accentIconTheme.color,
      elevation: 4.0,
      tooltip: "关闭交易",
    ) :
    FloatingActionButton(
      onPressed: _openTransaction,
      child: Icon(Icons.add),
      foregroundColor: Theme.of(context).primaryColor,
      backgroundColor: Theme.of(context).accentIconTheme.color,
      elevation: 4.0,
      tooltip: "打开交易",
    );
  }

  Widget _bottomSheet() {
    return Container(
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.green),
          ),
          color: Colors.white
      ),
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('购买'),
                  Text('售出'),
                  Radio(
                      value: 1,
                      groupValue: 0,
                      onChanged: null,
                      activeColor: Colors.purple),
                  Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 6.0)),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('数量'),
                  Text('金额'),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('北脑'),
                  Text('科技'),
                ],
              )
            ],
          ),
          Container(
            child: new FloatingActionButton(
                child: Icon(Icons.check),
                elevation: 4.0,
                backgroundColor: Colors.green,
                foregroundColor: Colors.red,
                onPressed: null),
          )
        ],
      ),
    );
  }

  _openTransaction() {
    _transactionBloc.onBottomSheetOpened();

    scaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
          return _bottomSheet();})
    .closed
    .whenComplete(() {
      _transactionBloc.onBottomSheetClosed();
    })
    ;
  }

}