
import 'package:flutter/material.dart';

class ProductDetailIntroductionWidget extends StatelessWidget {
  final String introduction;

  ProductDetailIntroductionWidget(this.introduction);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '产品介绍',
          style: Theme.of(context).textTheme.subhead.copyWith(fontSize: 18.0),
        ),
        SizedBox(height: 8.0),
        Text(
          introduction,
          style: Theme.of(context).textTheme.body1.copyWith(
              color: Colors.black45,
              fontSize: 16.0
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
                '更多',
                style: Theme.of(context).textTheme.body1.copyWith(
                    fontSize: 16.0,
                    color: Theme.of(context).accentColor
                ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 18.0,
              color: Theme.of(context).accentColor,
            )
          ],
        )
      ],
    );
  }

}