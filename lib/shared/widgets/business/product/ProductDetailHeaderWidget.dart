
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/common/Common.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';

class ProductDetailHeaderWidget extends StatelessWidget {

  final Product product;

  const ProductDetailHeaderWidget({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 140.0),
          child: ArcBannerImage(imageUrl: product.type,),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Poster(

              )
            ],
          ),
        )
      ],
    );
  }


}