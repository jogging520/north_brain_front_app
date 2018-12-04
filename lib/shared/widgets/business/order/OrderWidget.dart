
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/widgets/business/order/Order.dart';

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
    return RefreshIndicator(
      onRefresh: () {},
      child: CustomScrollView(
        slivers: _buildItems(context),
      ),
    );
  }

  List<Widget> _buildItems(BuildContext context) {
    List<String> _orderTypes = [];
    _orders.forEach((order) {
      if (!_orderTypes.contains(order.type)) {
        _orderTypes.add(order.type);
      }
    });

    return _orderTypes.map((orderType) {
      List<Order> _typedOrders = [];

      _orders.forEach((order) {
        if (order.type == orderType) {
          _typedOrders.add(order);
        }
      });

      return SliverStickyHeader(
        overlapsContent: true,
        header: OrderHeaderWidget(month: orderType),
        sliver: SliverPadding(
          padding: EdgeInsets.only(top: 1.0, left: 60.0),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 1.0,
              childAspectRatio: 6.0
            ),
            delegate: SliverChildBuilderDelegate(
                (context, i) => GestureDetector(
                  onTap: () {
                    print('------------$i');
                  },
                  child: OrderItemWidget(order: _typedOrders[i]),
                ),
              childCount: _typedOrders.length
            ),
          ),
        ),
      );
    }).toList();
  }
}