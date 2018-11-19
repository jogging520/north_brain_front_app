
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
          CommonService.prompt(
              context,
              GeneralConstants.CONSTANT_COMMON_PROMPT_ERROR_TITLE,
              loginState.error);
        }

        return _form(loginState);
      },
    );
  }

  Widget _form(LoginState loginState) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _userNameTextEditingController,
            decoration: InputDecoration(
                prefixIcon: Icon(IconStyle.ICON_LOGIN_USER),
                labelText: GeneralConstants.CONSTANT_WIDGET_LOGIN_USERNAME_LABEL,
                filled: true,
                fillColor: ColorStyle.COLOR_WIDGET_LOGIN_FORM_TEXT_FILL,
                border: InputBorder.none
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
            controller: _passwordTextEditingController,
            decoration: InputDecoration(
                prefixIcon: Icon(IconStyle.ICON_LOGIN_PASSWORD),
                labelText: GeneralConstants.CONSTANT_WIDGET_LOGIN_PASSWORD_LABEL,
                filled: true,
                fillColor: ColorStyle.COLOR_WIDGET_LOGIN_FORM_TEXT_FILL,
                border: InputBorder.none
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Material(
            borderRadius: BorderRadius.all(const Radius.circular(5.0)),
            shadowColor: ColorStyle.COLOR_WIDGET_LOGIN_FORM_BUTTON_SHADOW,
            child: MaterialButton(
              minWidth: 400.0,
              height: 55.0,
              color: ColorStyle.COLOR_WIDGET_LOGIN_FORM_BUTTON,
              onPressed: loginState.isLoginButtonEnabled ? _onLoginButtonPressed : null,
              child: Text(GeneralConstants.CONSTANT_WIDGET_LOGIN_BUTTION_TEXT,
                style: ContextStyle.CONTEXT_LOGIN,
              ),
            ),
          ),
          Container(
            child: loginState.isLoading ? CircularProgressIndicator() : null,
          )
        ],
      ),
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