
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';

class HomePage extends StatefulWidget{
  static List<String> role = const <String>['admin', 'operator'];

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc _authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: RaisedButton(
                  child: Text('登出'),
                  onPressed: () {
                    _authenticationBloc.onLogout();
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('产品'),
                  onPressed: () {
                    Application.router.navigateTo(
                        context,
                        '/product',
                      transition: TransitionType.inFromBottom
                    ).then((result) {

                    });
                  }),
            )
          ],
        ),
      ),
    );
  }

}