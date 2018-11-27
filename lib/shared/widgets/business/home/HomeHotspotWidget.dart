
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

final List<Image> hotspotImages = [
  Image.asset(ImageStyle.IMAGE_IMG1, fit: BoxFit.cover),
  Image.asset(ImageStyle.IMAGE_IMG2, fit: BoxFit.cover),
  Image.asset(ImageStyle.IMAGE_IMG3, fit: BoxFit.cover),
  Image.asset(ImageStyle.IMAGE_IMG4, fit: BoxFit.cover),
  Image.asset(ImageStyle.IMAGE_IMG5, fit: BoxFit.cover),
];

class HomeHotspotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _hotspot(context);
  }

  Widget _hotspot(BuildContext context) {
    return Container(
      child: Scrollbar(
        child: GridView.builder(
            padding: EdgeInsets.only(bottom: 5.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2.0,
              childAspectRatio: 2/3
            ),
            itemCount: hotspotImages.length,
            itemBuilder: _items),
      ),
    );
  }

  Widget _items(BuildContext context, int index) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: hotspotImages[index],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '图片',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '兰州',
                style: TextStyle(
                  fontSize: 13.0,
                ),
              ),
              Text(
                "人口",
                style: TextStyle(
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
        ],
      ),
    ) ;
  }
}