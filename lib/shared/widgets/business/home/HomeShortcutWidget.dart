
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

final List<String> images = [
  ImageStyle.IMAGE_BACKGROUND,
  ImageStyle.IMAGE_AVATAR,
  ImageStyle.IMAGE_DEFAULT,
  ImageStyle.IMAGE_LOGO
];

class HomeShortcutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _shortcuts(context);
  }

  Widget _shortcuts(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 1.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _items(context)
      ),
    );
  }

  List<Widget> _items(BuildContext context) {
    return images.map((image) {
      return GestureDetector(
        onTap: null,
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ClipOval(
                child: SizedBox(
                  width: 40.0,
                  height: 40.0,
                  child: Container(
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                '热点',
                style: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      );
    }).toList();
  }
}