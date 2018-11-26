
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';

class ProductDetailPage extends StatelessWidget {
  final String id;

  const ProductDetailPage({Key key, this.id}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('政策信息'),
      ),
      body: ProductDetailWidget(),
      resizeToAvoidBottomPadding: false,
    );
  }

}