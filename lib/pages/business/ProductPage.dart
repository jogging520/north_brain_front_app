
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/blocs/business/product/Product.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';

class ProductPage extends StatelessWidget {
  final ProductBloc _productBloc = ProductBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('产品列表'),
      ),
      body: ProductWidget(productBloc: _productBloc)
    );
  }
}
