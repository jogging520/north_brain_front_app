
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
                        '/search',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    height: MediaQuery.of(context).size.width / 2 + 30,
                    child: _items(context, 0, '政策信息'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Application.router.navigateTo(
                        context,
                        '/search',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    height: MediaQuery.of(context).size.width / 2 + 30,
                    child: _items(context, 1, '订单信息'),
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
                        '/search',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    height: MediaQuery.of(context).size.width / 2 + 30,
                    child: _items(context, 2, '产品详情'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Application.router.navigateTo(
                        context,
                        '/search',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    height: MediaQuery.of(context).size.width / 2 + 30,
                    child: _items(context, 3, '订单详情'),
                  ),
                ),
              ]
          ),
        ],
      ));
  }

  Widget _items(BuildContext context, int index, String title) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).backgroundColor,
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
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
                Container(
                  height: 0.0,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    ) ;
  }
}