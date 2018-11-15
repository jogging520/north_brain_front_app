
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class AuthenticationBloc extends
    Bloc<AuthenticationEvent, AuthenticationState> {

  void onApplicationStart() {
    dispatch(ApplicationStarted());
  }

  void onLogin({@required Token token}) {
    dispatch(LoggedIn(token));
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

      bool isSaved = await _saveToken(event.token);

      if (isSaved) {
        yield AuthenticationState.authenticated();
      } else {
        yield AuthenticationState.unauthenticated();
      }
    }

    if (event is LoggedOut) {
      yield state.copyWith(isLoading: true);

      bool isLoggedOut = await _deleteToken();

      if (isLoggedOut) {
        yield AuthenticationState.unauthenticated();
      }
    }
  }

  Future<bool> _hasToken() async {
    Token token = await TokenService.getToken();

    //TODO 要把token的失效时间加上
    return token != null && token.jwt != null;
  }

  Future<bool> _saveToken(Token token) async {
    return TokenService.saveToken(token);
  }

  Future<bool> _deleteToken() async {
    return TokenService.deleteToken();
  }
}