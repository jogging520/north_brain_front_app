import 'dart:math';

import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';

class ProductPage extends StatelessWidget {
  final List<Product> _products;

  static const int itemCount = 100;

  ProductPage(): _products = _initialProducts(itemCount).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('产品列表'),
      ),
      body: StaggeredGridView.countBuilder(
          primary: false,
          crossAxisCount: 4,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          itemBuilder: (context, index) => ProductWidget(_products[index], index),
          staggeredTileBuilder: (index) => StaggeredTile.fit(2))
    );
  }
}

List<Product> _initialProducts(int count) {
  Random random = Random();

  return List.generate(count,
  (i) => Product(
    (random.nextInt(1000) + 200).toString(),
      '谷物' + (random.nextInt(1000) + 200).toString(),
      'COMMON',
      (random.nextInt(500) + 200),
      (random.nextInt(800) + 200)
  )
  );
}