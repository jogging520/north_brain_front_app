
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/widgets/general/common/ArcBannerImageWidget.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class ProfileWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileWidgetState();
}

class ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Stack(
            alignment: Alignment(0.0, 1.0),
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: ArcBannerImageWidget(imageUrl: ImageStyle.IMAGE_DEFAULT,)
              ),
              Positioned(
                bottom: 0.0,
                left: 16.0,
                right: 16.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(ImageStyle.IMAGE_AVATAR,
                            width: 100.0,
                            height: 100.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Dismissible(
                                key: Key('a'),
                                direction: DismissDirection.vertical,
                                resizeDuration: Duration(microseconds: 200),
                                child: Text(
                                  '请点击登录',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0, bottom: 1.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.redAccent,
                    size: 25.0,
                  ),
                  Container(
                    child: Text(
                      '收藏',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.comment,
                    color: Colors.purpleAccent,
                    size: 25.0,
                  ),
                  Container(
                    child: Text(
                      '评论',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.map,
                    color: Colors.cyan,
                    size: 25.0,
                  ),
                  Container(
                    child: Text(
                      '足迹',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Divider(
            color: Colors.black12,
            height: 2.0,
          ),
          margin: EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
        ),
        Container(
          child: Text(
            '北脑红包大大地',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
          ),
          margin: EdgeInsets.only(left: 15.0, top: 8.0),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0, bottom: 1.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(
                    Icons.event,
                    color: Colors.lightGreen,
                    size: 25.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '我的钱包',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.account_balance,
                    color: Colors.lightGreen,
                    size: 25.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '红包',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.accessibility,
                    color: Colors.pink,
                    size: 25.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '涛爷',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    color: Colors.cyan,
                    size: 25.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '马爷',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Divider(
            color: Colors.black12,
            height: 2.0,
          ),
          margin: new EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
        ),
        Container(
          margin: EdgeInsets.all(15.0),
          width: MediaQuery.of(context).size.width,
          height: 120.0,
          child: Image.asset(
            ImageStyle.IMAGE_DEFAULT,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          child: Text(
            '北脑北脑',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
          ),
          margin: EdgeInsets.only(left: 15.0, top: 8.0),
        ),
        Container(
          child: Divider(
            color: Colors.black12,
            height: 2.0,
          ),
          margin: new EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
        ),
      ],
    );
  }

}