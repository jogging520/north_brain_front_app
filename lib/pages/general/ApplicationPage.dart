
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:north_brain_front_app/pages/business/HomePage.dart';
import 'package:north_brain_front_app/pages/general/LoginPage.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/routes/Routes.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:north_brain_front_app/shared/widgets/general/LoadingWidget.dart';

//类名：应用启动页面
class ApplicationPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => ApplicationPageState();
}

class ApplicationPageState extends State<ApplicationPage>{
  final AuthenticationBloc _authenticationBloc = AuthenticationBloc();

  ApplicationPageState() {
    final router = new Router();
    Routes.configureRoutes(router);

    Application.router = router;

    _authenticationBloc.onApplicationStart();
  }

  @override
  void dispose() {
    _authenticationBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Logger.root.fine(GeneralConstants.CONSTANT_COMMON_LOG_APPLICATION_LAUNCH_PROMPT);

    return BlocProvider<AuthenticationBloc>(
      bloc: _authenticationBloc,
      child: MaterialApp(
        title: GeneralConstants.CONSTANT_COMMON_APPLICATION_TITLE,
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
            primarySwatch: ColorStyle.COLOR_PRIMARY_SWATCH
        ),
        onGenerateRoute: Application.router.generator,
        home: _rootPage(),
      )

    );
  }

  Widget _rootPage() {
    return BlocBuilder<AuthenticationEvent, AuthenticationState> (
      bloc: _authenticationBloc,
      builder: (BuildContext context, AuthenticationState authenticationState) {
        List<Widget> widgets = [];

        if (authenticationState.isAuthenticated) {
          widgets.add(HomePage());
        } else {
          widgets.add(LoginPage());
        }

        if (authenticationState.isLoading) {
          widgets.add(LoadingWidget());
        }

        return Stack(
          children: widgets,
        );
      },
    );
  }

}