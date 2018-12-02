
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ProductDetailPhotoWidget extends StatelessWidget {
  final List<String> phoneUrls;

  ProductDetailPhotoWidget(this.phoneUrls);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            '产品照片',
            style: Theme.of(context).textTheme.subhead.copyWith(fontSize: 18.0),
          ),
        ),
        SizedBox.fromSize(
          size: Size.fromHeight(100.0),
          child: ListView.builder(
              itemCount: phoneUrls.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 8.0, left: 20.0),
              itemBuilder: _photos),
        )
      ],
    );
  }

  Widget _photos(BuildContext context, int index) {
    var photo = phoneUrls[index];

    return Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.asset(
          photo,
          width: 160.0,
          height: 120.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}