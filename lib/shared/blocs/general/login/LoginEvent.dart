
abstract class LoginEvent {}


class LoginButtonPressed extends LoginEvent {
  final String userName;
  final String password;
  final String mobile;

  LoginButtonPressed({this.userName, this.password, this.mobile});

  @override
  int get hashCode => userName.hashCode ^ password.hashCode ^ mobile.hashCode;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is LoginButtonPressed &&
      userName == other.userName &&
      password == other.password &&
      mobile == other.mobile;
}

class LoggedIn extends LoginEvent {}

