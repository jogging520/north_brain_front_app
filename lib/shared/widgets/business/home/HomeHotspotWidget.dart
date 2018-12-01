
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/shared/animations/Animation.dart';
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

  final VoidCallback onTapped;

  const HomeHotspotWidget({Key key, this.onTapped}) : super(key: key);

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
                GestureDetector(
                  onTap: () {
                    Application.router.navigateTo(
                        context,
                        '/policy',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    ).then((result) {
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    height: MediaQuery.of(context).size.width / 2 + 30,
                    child: _items(context, 0),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Application.router.navigateTo(
                        context,
                        '/order',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    ).then((result) {
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    height: MediaQuery.of(context).size.width / 2 + 30,
                    child: _items(context, 1),
                  ),
                ),
              ]
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Application.router.navigateTo(
                        context,
                        '/product/1',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    ).then((result) {
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    height: MediaQuery.of(context).size.width / 2 + 30,
                    child: _items(context, 2),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Application.router.navigateTo(
                        context,
                        '/order/1',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    ).then((result) {
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    height: MediaQuery.of(context).size.width / 2 + 30,
                    child: _items(context, 3),
                  ),
                ),
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
            padding: EdgeInsets.all(0.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 10,
              height: MediaQuery.of(context).size.width / 2 - 40,
              child: _hotspotImages[index],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
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