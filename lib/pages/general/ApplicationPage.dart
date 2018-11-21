
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:north_brain_front_app/pages/business/BusinessPage.dart';
import 'package:north_brain_front_app/pages/general/GeneralPage.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/bottom/Bottom.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/routes/Routes.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

//类名：应用启动页面
class ApplicationPage extends StatelessWidget{

  final BottomBloc _bottomBloc = BottomBloc();

  ApplicationPage() {
    final router = new Router();
    Routes.configureRoutes(router);

    Application.router = router;

    _bottomBloc.onApplicationStart();
  }

  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc _authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);

    Logger.root.fine(GeneralConstants.CONSTANT_COMMON_LOG_APPLICATION_LAUNCH_PROMPT);

    return BlocProvider<BottomBloc>(
        bloc: _bottomBloc,
        child: MaterialApp(
          title: GeneralConstants.CONSTANT_COMMON_APPLICATION_TITLE,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: ColorStyle.COLOR_PRIMARY_SWATCH
          ),
          onGenerateRoute: Application.router.generator,
          home: _rootPage(_authenticationBloc),
        )

    );
  }

  Widget _rootPage(AuthenticationBloc authenticationBloc) {
    return BlocBuilder<AuthenticationEvent, AuthenticationState> (
      bloc: authenticationBloc,
      builder: (BuildContext context, AuthenticationState authenticationState) {
        List<Widget> widgets = [];

        if (authenticationState.isAuthenticated) {
          print('----1:已经认证');
          widgets.add(HomePage());
        } else {
          print('----2:未认证');
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