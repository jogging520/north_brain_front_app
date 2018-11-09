

import 'package:north_brain_front_app/shared/models/general/Token.dart';

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
  final Token token;

  LoggedIn(this.token);

  @override
  bool operator ==(other) {
    return identical(this, other) ||
    other is LoggedIn &&
    runtimeType == other.runtimeType &&
    token == other.token;
  }

  @override
  int get hashCode => token.hashCode;

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