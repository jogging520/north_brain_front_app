
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/common/Common.dart';

class ProductDetailPhotoWidget extends StatelessWidget {
  final List<String> photos;

  ProductDetailPhotoWidget(this.photos);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromHeight(140.0),
      child: ListView.builder(
          itemCount: photos.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(top: 8.0, left: 20.0),
          itemBuilder: _buildPhotos),
    );
  }

  Widget _buildPhotos(BuildContext context, int index) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: GestureDetector(
          onTap: () {
            _open(context, index);
          },
          child: Hero(
            tag: photos[index],
            child: Image.asset(
              photos[index],
              height: 80.0,
            ),
          ),
        ),
      ),
    );
  }

  void _open(BuildContext context, int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => GalleryPhotoView(
              photos: photos,
              initialPage: index,
            )
        ));
  }
}