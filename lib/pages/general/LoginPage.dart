import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/login/Login.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  final LoginBloc _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginWidget(
        authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
        loginBloc: _loginBloc,
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  @override
  void dispose() {
    _loginBloc.dispose();
    super.dispose();
  }
}