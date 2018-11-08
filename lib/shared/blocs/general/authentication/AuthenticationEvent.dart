

abstract class AuthenticationEvent {}

class ApplicationStarted extends AuthenticationEvent {
  @override
  bool operator ==(other) {
    return identical(this, other) ||
    other is ApplicationStarted && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() => 'ApplicationStarted';
}

class LoggedIn extends ApplicationStarted {
  final String userName;
  final String password;
  final String mobile;

  LoggedIn(this.userName, this.password, {this.mobile});


  @override
  bool operator ==(other) {
    return identical(this, other) ||
    other is LoggedIn &&
    runtimeType == other.runtimeType &&
    userName == other.userName &&
    password == other.password;
  }

  @override
  int get hashCode => userName.hashCode ^ password.hashCode;

  @override
  String toString() => 'LoggedIn';
}

class LoggedOut extends ApplicationStarted {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is LoggedOut && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() => 'LoggedOut';
}