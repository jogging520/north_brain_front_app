
import 'package:north_brain_front_app/shared/models/general/Token.dart';

class LoginState {
  final bool isLoading;
  final bool isLoginButtonEnabled;
  final String error;
  final Token token;

  LoginState({this.isLoading, this.isLoginButtonEnabled, this.error, this.token});

  factory LoginState.initial() {
    return LoginState(
      isLoading: false,
      isLoginButtonEnabled: true,
      error: '',
      token: null
    );
  }

  factory LoginState.loading() {
    return LoginState(
        isLoading: true,
        isLoginButtonEnabled: false,
        error: '',
        token: null
    );
  }

  factory LoginState.failure(String error) {
    return LoginState(
        isLoading: false,
        isLoginButtonEnabled: true,
        error: error,
        token: null
    );
  }

  factory LoginState.success(Token token) {
    return LoginState(
        isLoading: false,
        isLoginButtonEnabled: true,
        error: '',
        token: token
    );
  }

  @override
  int get hashCode =>
      isLoading.hashCode ^
      isLoginButtonEnabled.hashCode ^
      error.hashCode ^
      token.hashCode;


  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is LoginState &&
      runtimeType == other.runtimeType &&
      isLoading == other.isLoading &&
      isLoginButtonEnabled == other.isLoginButtonEnabled &&
      error == other.error &&
      token == other.token;

  @override
  String toString() =>
      'LoginState { isLoading: $isLoading, isLoginButtonEnabled: $isLoginButtonEnabled, error: $error, token: $token }';
}