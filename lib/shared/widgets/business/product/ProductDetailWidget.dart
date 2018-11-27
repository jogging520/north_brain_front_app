
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:north_brain_front_app/shared/widgets/business/product/Product.dart';

class ProductDetailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Random random = Random();

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProductDetailHeaderWidget(product: Product(
              (random.nextInt(1000) + 200).toString(),
              '谷物' + (random.nextInt(1000) + 200).toString(),
              'COMMON',
              (random.nextInt(500) + 200),
              (random.nextInt(800) + 200),
              ImageStyle.IMAGE_IMG1,
              ImageStyle.IMAGE_IMG2
          ),),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: ProductDetailIntroductionWidget('测试产品'),
          ),
          ProductDetailPhotoWidget(
            [ImageStyle.IMAGE_IMG1,
            ImageStyle.IMAGE_IMG2,
            ImageStyle.IMAGE_IMG3,
            ImageStyle.IMAGE_IMG4,
            ImageStyle.IMAGE_IMG5,
            ]
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

}