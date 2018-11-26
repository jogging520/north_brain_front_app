import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/models/business/BusinessModel.dart';
import 'package:north_brain_front_app/shared/widgets/business/product/Product.dart';
import 'package:north_brain_front_app/shared/widgets/general/common/Common.dart';

class ProductDetailHeaderWidget extends StatelessWidget {

  final Product product;

  const ProductDetailHeaderWidget({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 140.0),
          child: ArcBannerImageWidget(imageUrl: product.banner,),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              PosterWidget(
                imageUrl: product.image,
                height: 180.0,
              ),
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: ProductDetailInformationWidget(
                  product: product,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}