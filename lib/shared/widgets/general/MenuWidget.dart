
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Theme.of(context).bottomAppBarColor)
            )
          ),
          child: ListTile(
            onTap: null,
            leading: Icon(Icons.airport_shuttle),
            title: Text(
              '抽屉',
              style: Theme.of(context).textTheme.body2.apply(
                color: Theme.of(context).buttonColor
              ),
            )
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 9 / 11,
              height: MediaQuery.of(context).size.height * 1 / 3,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: DecorationImage(
                  image: AssetImage(ImageStyle.IMAGE_DEFAULT),
                  fit: BoxFit.fill
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('中华人民共和国'),
              subtitle: Text('伟大祖国'),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.timeline),
              title: Text('甘肃省'),
              subtitle: Text('兰州市'),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.pie_chart_outlined),
              title: Text('甘肃省'),
              subtitle: Text('兰州市'),
              onTap: null,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).bottomAppBarColor,
                    width: 1.0
                  )
                )
              ),
              padding: EdgeInsets.symmetric(vertical: 4.0),
            ),
            ListTile(
              leading: Icon(Icons.short_text),
              title: Text('甘肃省'),
              subtitle: Text('兰州市'),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.opacity),
              title: Text('甘肃省'),
              subtitle: Text('兰州市'),
              onTap: null,
            ),
          ],
        ),
      ),
    );
  }

}