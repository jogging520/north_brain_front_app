
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/widgets/business/product/Product.dart';

class ProductDetailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProductDetailHeaderWidget(),
        ],
      ),
    );
  }

}