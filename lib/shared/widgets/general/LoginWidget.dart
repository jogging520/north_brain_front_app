
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/login/Login.dart';

class LoginWidget extends StatefulWidget {
  final LoginBloc _loginBloc;
  final AuthenticationBloc _authenticationBloc;

  const LoginWidget({
    Key key,
    @required LoginBloc loginBloc,
    @required AuthenticationBloc authenticationBloc}) :
      _loginBloc = loginBloc,
      _authenticationBloc = authenticationBloc,
        super(key: key);

  @override
  State<LoginWidget> createState() {
    // TODO: implement createState
  }


}

class LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }

}