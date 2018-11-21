
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/bottom/Bottom.dart';
import 'package:north_brain_front_app/shared/common/Common.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

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
    final BottomBloc _bottomBloc =
    BlocProvider.of<BottomBloc>(context);

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
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    ).then((result) {
                    });
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('个人设置'),
                  onPressed: () {
                    Application.router.navigateTo(
                        context,
                        '/policy',
                        transition: Transition.transition(),
                        transitionDuration: Transition.CONSTANT_PAGE_ANIMATION_TRANSITION_DURATION
                    ).then((result) {
                    });
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomWidget(bottomBloc: _bottomBloc),
    );
  }

}