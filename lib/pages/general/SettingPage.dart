
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';

class SettingPage extends StatefulWidget {

   final bool darkEnabled;
   final bool darkOLED;

  SettingPage({
    this.darkEnabled,
    this.darkOLED});

  @override
  SettingPageState createState() => new SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(GeneralConstants.CONSTANT_PAGE_APP_BAR_HEIGHT),
        child: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          titleSpacing: 0.0,
          elevation: GeneralConstants.CONSTANT_PAGE_APP_BAR_ELEVATION,
          title: Text(
            '设置',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              '属性',
              style: Theme.of(context).textTheme.body2,
            ),
          ),
          Container(
            color: Theme.of(context).cardColor,
            child: ListTile(
              onTap: null,
              leading: Icon(
                widget.darkEnabled ? Icons.brightness_3 : Icons.brightness_7
              ),
              subtitle: Text('主题'),
              title: Text('主要的内容'),
            ),
          ),
          Container(
            color: Theme.of(context).cardColor,
            child: ListTile(
              leading: Icon(Icons.opacity),
              title: Text('第二个'),
              trailing: Switch(
                activeColor: Theme.of(context).accentColor,
                  value: widget.darkOLED,
                  onChanged: (onOff) {
                    print(onOff);
                  }),
            ),
          ),
          Container(
            color: Theme.of(context).cardColor,
            child: ListTile(
              leading: Icon(Icons.short_text),
              title: Text('第3个'),
              trailing: Text('第3个'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('挑食', style: Theme.of(context).textTheme.body2,),
          ),
          Container(
            color: Theme.of(context).cardColor,
            child: ListTile(
              title: Text('第四额'),
              leading: Icon(Icons.file_upload),
            ),
          ),
          Container(
            color: Theme.of(context).cardColor,
            child: ListTile(
              title: Text('第四额'),
              leading: Icon(Icons.file_download),
            ),
          )

        ],
      ),
    );
  }

}