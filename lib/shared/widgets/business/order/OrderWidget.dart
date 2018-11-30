
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:side_header_list_view/side_header_list_view.dart';

final List<Order> _orders = [
  Order(id: '111', name: 'abcd', type: 'COMMON'),
  Order(id: '112', name: 'Habcd', type: 'COMMON'),
  Order(id: '113', name: 'Fabcd', type: 'COMMON'),
  Order(id: '114', name: 'Gabcd', type: 'COMMON'),
  Order(id: '115', name: 'abcd', type: 'COMMON'),
  Order(id: '116', name: 'ab1cd', type: 'COMMON'),
  Order(id: '117', name: 'abcd', type: 'COMMON'),
  Order(id: '118', name: 'ab3cd', type: 'COMMON'),
  Order(id: '119', name: 'abcd', type: 'COMMON'),
  Order(id: '211', name: 'abcd', type: 'COMMON'),
  Order(id: '212', name: 'abDcd', type: 'SPECIAL'),
  Order(id: '213', name: '1abcd', type: 'SPECIAL'),
  Order(id: '121', name: 'a1bcd', type: 'SPECIAL'),
  Order(id: '131', name: 'abcd', type: 'SPECIAL'),
  Order(id: '141', name: 'aAbcd', type: 'SPECIAL'),
  Order(id: '151', name: 'abcd', type: 'SPECIAL'),
  Order(id: '161', name: 'aADbcd', type: 'SPECIAL'),
  Order(id: '171', name: 'abcd', type: 'COMMON'),
  Order(id: '181', name: 'abcd', type: 'COMMON'),
  Order(id: '191', name: 'aFFEbcd', type: 'COMMON'),
  Order(id: '311', name: 'ab3cd', type: 'COMMON'),
  Order(id: '411', name: 'ab3cd', type: 'COMMON'),
  Order(id: '511', name: 'a1Fb3cd', type: 'COMMON'),
  Order(id: '611', name: 'abcd', type: 'COMMON'),
  Order(id: '711', name: 'ab2cd', type: 'COMMON'),
  Order(id: '811', name: 'abcGGJd', type: 'COMMON'),
];

class OrderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SideHeaderListView(
      padding: EdgeInsets.all(16.0),
      itemExtend: 48.0,
      itemCount: _orders.length,
      headerBuilder: _header,
      itemBuilder: _item,
      hasSameHeader: _isSame,
    );
  }

  Widget _header(BuildContext context, int index) {
    return SizedBox(
      width: 100,
      //height: 700,
      child: Text(
          _orders[index].type,
          style: Theme.of(context).textTheme.title)
    );

  }


  Widget _item(BuildContext context, int index) {
    return Text(_orders[index].name);
  }

  bool _isSame(int a, int b) {
    return _orders[a].type == _orders[b].type;
  }
}