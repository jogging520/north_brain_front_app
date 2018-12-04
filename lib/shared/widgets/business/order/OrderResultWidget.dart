
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class OrderResultWidget extends StatelessWidget {
  final Order order;

  const OrderResultWidget({Key key, this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('订单处理结果'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildResultsRow(context, 'Name', order.name),
            _buildResultsRow(context, 'Type', order.type, linebreak: true),
            _buildResultsRow(context, 'id', order.id),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('关闭'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  Widget _buildResultsRow(BuildContext context, String name, dynamic value, {bool linebreak: false}) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 2.0),
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(
                      width: 4.0,
                      color: Theme.of(context).accentColor
                  )
              )
            ),
        ),
        Container(
          margin: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              _buildValueInline(value, linebreak),
            ],
          ),
        ),
        _buildValueOnOwnRow(value, linebreak),
        Container(height: 12.0,)
      ],
    );
  }

  Widget _buildValueInline(dynamic value, bool linebreak) {
    return (linebreak) ? Container() : Text(value.toString());
  }

  Widget _buildValueOnOwnRow(dynamic value, bool linebreak) {
    return (linebreak) ? Text(value.toString()) : Container();
  }
}
