
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/pages/business/BusinessPage.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/bottom/Bottom.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends StatefulWidget{
  static List<String> role = const <String>['admin', 'operator'];

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  final RefreshController _refreshController = RefreshController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc _authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);
    final BottomBloc _bottomBloc = BlocProvider.of<BottomBloc>(context);


    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DiscoveryWidget()
            ],
          ),
        ),
      ),
      drawer: MenuWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
                child: SmartRefresher(
                  enablePullDown: true,
                  enablePullUp: true,
                  controller: _refreshController,
                  onRefresh: _onRefresh,
                  onOffsetChange: _onOffsetChange,
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.all(0.0),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      CarouselWidget()
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomWidget(bottomBloc: _bottomBloc),
      resizeToAvoidBottomPadding: false,
    );
  }

  void _onRefresh(up) {
    Future.delayed(Duration(microseconds: 1000)).then((value) {
      print('1111');
    }
    );
  }

  void _onOffsetChange(bool isUp, double offset) {
    // if you want change some widgets state ,you should rewrite the callback
  }
}