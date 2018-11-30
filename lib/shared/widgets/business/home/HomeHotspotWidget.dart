
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

final List<Image> _hotspotImages = [
  Image.asset(ImageStyle.IMAGE_IMG1, fit: BoxFit.fill),
  Image.asset(ImageStyle.IMAGE_IMG2, fit: BoxFit.fill),
  Image.asset(ImageStyle.IMAGE_IMG3, fit: BoxFit.fill),
  Image.asset(ImageStyle.IMAGE_IMG4, fit: BoxFit.fill),
  Image.asset(ImageStyle.IMAGE_IMG5, fit: BoxFit.fill),
  Image.asset(ImageStyle.IMAGE_IMG5, fit: BoxFit.fill),
];

class HomeHotspotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 1.0),
      child: Column(
        children: <Widget>[
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 10,
                  height: MediaQuery.of(context).size.width / 2,
                  child: _items(context, 0),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 10,
                  height: MediaQuery.of(context).size.width / 2,
                  child: _items(context, 1),
                )
              ]
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 10,
                  height: MediaQuery.of(context).size.width / 2,
                  child: _items(context, 2),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 10,
                  height: MediaQuery.of(context).size.width / 2,
                  child: _items(context, 3),
                )
              ]
          ),
        ],
      ));
  }

  Widget _items(BuildContext context, int index) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              width: 100,
              height: 100,
              child: _hotspotImages[index],
            ),
          ),
          Container(
            color: Colors.black12,
            child: Column(
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
          ),
        ],
      ),
    ) ;
  }
}