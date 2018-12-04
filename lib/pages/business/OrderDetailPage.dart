
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/widgets/business/order/Order.dart';

class OrderDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderDetailPageState();
}

class OrderDetailPageState extends State<OrderDetailPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('订单种植'),
      ),
      body: OrderCreationWidget(id: '1'),
      resizeToAvoidBottomPadding: false,
    );
  }
}