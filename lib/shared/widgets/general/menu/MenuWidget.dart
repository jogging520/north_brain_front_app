
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/shared/blocs/business/menu/Menu.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

class MenuWidget extends StatelessWidget {
  final MenuBloc _menuBloc = MenuBloc();

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<MenuEvent, MenuState> (
      bloc: _menuBloc,
      builder: (BuildContext context, MenuState menuState) {
        return _drawer(context, _menuBloc, menuState);
      },
    );
  }

  Widget _drawer(BuildContext context, MenuBloc menuBloc,
      MenuState menuState) {
    return Drawer(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Theme.of(context).bottomAppBarColor)
              )
          ),
          child: ListTile(
              onTap: () {},
              leading: Icon(Icons.apps),
              title: Text(
                '陇上粮仓',
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
              title: Text('政策信息'),
              subtitle: Text('伟大祖国'),
              onTap: () {
                Application.navigateTo(context, '/policy/1');
              },
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

  void _logout(BuildContext context, AuthenticationBloc authenticationBloc) {
    authenticationBloc.onLogout();
  }

}