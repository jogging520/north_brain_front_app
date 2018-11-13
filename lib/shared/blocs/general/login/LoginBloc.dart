
import 'package:bloc/bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/login/Login.dart';
import 'package:north_brain_front_app/shared/models/general/GeneralModel.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SessionService sessionService = SessionService();

  @override
  LoginState get initialState => LoginState.initial();

  void onLoginButtonPressed({String userName, String password, String mobile}) {
    dispatch(LoginButtonPressed(
      userName: userName,
      password: password,
      mobile: mobile
    ));
  }

  void onLoginSuccess() {
    dispatch(LoggedIn());
  }

  @override
  Stream<LoginState> mapEventToState(LoginState state, LoginEvent event) async* {

    if (event is LoginButtonPressed) {
      yield LoginState.loading();

      try {
        Token token = await _login(
            userName: event.userName, password: event.password, mobile: event.mobile);

        yield LoginState.success(token);
      } catch (error) {
        yield LoginState.failure(error.toString());
      }
    }

    if (event is LoggedIn) {
      yield LoginState.initial();
    }
  }

  Future<Token> _login({String userName, String password, String mobile}) async {
    return await this.sessionService.login(
        userName: userName, password: password, mobile: mobile);
  }

}