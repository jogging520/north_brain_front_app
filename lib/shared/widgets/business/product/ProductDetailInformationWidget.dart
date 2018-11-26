
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/widgets/general/common/Common.dart';

class ProductDetailInformationWidget extends StatelessWidget {
  final Product product;

  const ProductDetailInformationWidget({Key key, this.product}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          product.name,
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(height: 8.0),
        RatingWidget(rating: 3.5,),
        SizedBox(height: 12.0),
        CategoryChipsWidget(categories: ['特殊属性1', '特殊属性2'],)
      ],
    );
  }

}