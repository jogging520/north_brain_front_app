
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

final List<Image> hotspotImages = [
  Image.asset(ImageStyle.IMAGE_DEFAULT, fit: BoxFit.cover),
  Image.asset(ImageStyle.IMAGE_DEFAULT, fit: BoxFit.cover),
  Image.asset(ImageStyle.IMAGE_DEFAULT, fit: BoxFit.cover),
  Image.asset(ImageStyle.IMAGE_DEFAULT, fit: BoxFit.cover),
];

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TestPageState();
}

class TestPageState extends State<TestPage> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(4.0),
      //主轴间隔
      mainAxisSpacing: 4.0,
      //横轴间隔
      crossAxisSpacing: 4.0,
      children: <Widget>[
        _getGridViewItemUI(context, hotspotImages[0]),
        _getGridViewItemUI(context, hotspotImages[1]),
        _getGridViewItemUI(context, hotspotImages[2]),
        _getGridViewItemUI(context, hotspotImages[3]),
      ],
    );
  }

  Widget _getGridViewItemUI(BuildContext context, Image image) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          image,
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