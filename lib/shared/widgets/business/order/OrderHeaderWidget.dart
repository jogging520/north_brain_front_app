
import 'package:flutter/material.dart';

class OrderHeaderWidget extends StatelessWidget {
  final String month;

  const OrderHeaderWidget({Key key, this.month}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 44.0,
          width: 44.0,
          child: GestureDetector(
            onTap: () {
              print('head');
            },
            child: Card(
              color: Theme.of(context).accentColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(month)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}