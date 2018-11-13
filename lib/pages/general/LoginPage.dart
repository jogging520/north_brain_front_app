
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/login/Login.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:north_brain_front_app/shared/widgets/general/LoginWidget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginBloc _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageStyle.IMAGE_BACKGROUND))
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage(ImageStyle.IMAGE_LOGO),
                  width: 150.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: LoginWidget(
                    authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
                    loginBloc: _loginBloc,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}