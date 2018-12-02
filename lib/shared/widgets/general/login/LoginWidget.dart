import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/login/Login.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';

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
    return LoginWidgetState(
        loginBloc: _loginBloc,
        authenticationBloc: _authenticationBloc);
  }
}

class LoginWidgetState extends State<LoginWidget> {
  final LoginBloc _loginBloc;
  final AuthenticationBloc _authenticationBloc;
  TextEditingController _userNameTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController = TextEditingController();

  LoginWidgetState({
    @required LoginBloc loginBloc,
    @required AuthenticationBloc authenticationBloc}):
        _loginBloc = loginBloc,
        _authenticationBloc = authenticationBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginEvent, LoginState>(
      bloc: _loginBloc,
      builder: (BuildContext context, LoginState loginState) {
        if (_loginSucceeded(loginState)) {
          _authenticationBloc.onLogin(token: loginState.token);
          _loginBloc.onLoginSuccess();
        }

        if (_loginFailed(loginState)) {
          CommonService.hint(loginState.error);
        }

        return _form(loginState);
      },
    );
  }

  Widget _form(LoginState loginState) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image(
            image: AssetImage(ImageStyle.IMAGE_DEFAULT),
            fit: BoxFit.cover,
            color: Colors.black26,
            colorBlendMode: BlendMode.darken
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage(ImageStyle.IMAGE_AVATAR),
              width: 150.0,
            ),
            Form(
              child: Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle: ContextStyle.CONTEXT_WIDGET_LOGIN
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(IconStyle.ICON_LOGIN_USER),
                              labelText: GeneralConstants.CONSTANT_WIDGET_LOGIN_USERNAME_LABEL,
                              filled: true,
                              fillColor: Colors.black12,
                              border: InputBorder.none
                          ),
                          keyboardType: TextInputType.text,
                          controller: _userNameTextEditingController,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(IconStyle.ICON_LOGIN_PASSWORD),
                              labelText: GeneralConstants.CONSTANT_WIDGET_LOGIN_PASSWORD_LABEL,
                              filled: true,
                              fillColor: Colors.black12,
                              border: InputBorder.none
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          controller: _passwordTextEditingController,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: MaterialButton(
                                  height: 50.0,
                                  color: Colors.orange,
                                  textColor: Colors.white,
                                  child: Text(GeneralConstants.CONSTANT_WIDGET_LOGIN_BUTTON_TEXT,
                                    style: ContextStyle.CONTEXT_WIDGET_LOGIN,
                                  ),
                                  onPressed: loginState.isLoginButtonEnabled ? _onLoginButtonPressed : null,
                                  splashColor: Colors.cyanAccent,
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
            )
          ],
        )
      ],
    );
  }

  bool _loginSucceeded(LoginState loginState) => loginState.token != null;

  bool _loginFailed(LoginState loginState) => loginState.error.isNotEmpty;

  _onLoginButtonPressed() {
    _loginBloc.onLoginButtonPressed(
        userName: _userNameTextEditingController.text,
        password: _passwordTextEditingController.text
    );
  }
}