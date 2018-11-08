
import 'package:bloc/bloc.dart';

import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/models/general/Token.dart';
import 'package:north_brain_front_app/shared/services/general/SessionService.dart';
import 'package:north_brain_front_app/shared/services/general/TokenService.dart';

class AuthenticationBloc extends
    Bloc<AuthenticationEvent, AuthenticationState> {
  final SessionService sessionService = new SessionService();

  void onApplicationStart() {
    dispatch(ApplicationStarted());
  }

  void onLogin(String userName, String password, {String mobile}) {
    dispatch(LoggedIn(userName, password, mobile: mobile));
  }

  void onLogout() {
    dispatch(LoggedOut());
  }

  @override
  AuthenticationState get initialState => AuthenticationState.initializing();

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationState state,
      AuthenticationEvent event) async* {
    if (event is ApplicationStarted) {
      final bool hasToken = await _hasToken();

      if (hasToken) {
        yield AuthenticationState.authenticated();
      } else {
        yield AuthenticationState.unauthenticated();
      }
    }

    if (event is LoggedIn) {
      yield state.copyWith(isLoading: true);

      await _login(event.userName, event.password, mobile: event.mobile);

      yield AuthenticationState.authenticated();
    }

    if (event is LoggedOut) {
      yield state.copyWith(isLoading: true);

      bool isLoggedOut = await _logout();

      if (isLoggedOut) {
        yield AuthenticationState.unauthenticated();
      }
    }
  }

  Future<bool> _hasToken() async {
    Token token = await TokenService.getToken();

    return token == null;
  }

  Future<Token> _login(String userName, String password, {String mobile}) async {
    return sessionService.login(userName: userName, password: password, mobile: mobile);
  }

  Future<bool> _logout() async {
    return sessionService.logout();
  }
}