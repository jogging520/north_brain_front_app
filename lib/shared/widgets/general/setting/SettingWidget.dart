
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/setting/Setting.dart';

class SettingWidget extends StatelessWidget {
  final SettingBloc _settingBloc = SettingBloc();

  @override
  Widget build(BuildContext context) {
    _settingBloc.onWidgetInitialized();

    return BlocBuilder<SettingEvent, SettingState> (
      bloc: _settingBloc,
      builder: (BuildContext context, SettingState settingState) {
        return _settingListTile(context, _settingBloc, settingState);
      },
    );
  }

  Widget _settingListTile(BuildContext context, SettingBloc settingBloc,
      SettingState settingState) {
    return ListView(
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
                _isDark(settingState) ? Icons.brightness_3 : Icons.brightness_7
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
                value: _switch(settingState),
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
    );
  }

  bool _isDark(SettingState settingState) => settingState.setting != null && settingState.setting.dark;
  bool _switch(SettingState settingState) => settingState.setting != null ? settingState.setting.dark : false;
}