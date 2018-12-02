
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/bottom/Bottom.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';
import 'package:north_brain_front_app/shared/widgets/business/home/Home.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

class HomePage extends StatefulWidget{
  static List<String> role = const <String>['admin', 'operator'];

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BottomBloc _bottomBloc = BlocProvider.of<BottomBloc>(context);
    final AuthenticationBloc _authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text('陇上粮仓'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Application.navigateTo(context, '/search');
            },
          ),
          IconButton(
            icon: Icon(Icons.directions_run),
            onPressed: () {
              _authenticationBloc.onLogout();
            },
          ),
        ],
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
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.all(0.0),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    CarouselWidget(),
                    HomeShortcutWidget(),
                    Container(
                      child: Divider(
                        color: Colors.black12,
                        height: 2.0,
                      ),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    ),
                    HomeHotspotWidget(),
                    Container(
                      child: Divider(
                        color: Colors.black12,
                        height: 2.0,
                      ),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    ),
                    Container(
                      child: Text(
                        '北脑红包大大地',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
                      ),
                      margin: EdgeInsets.only(left: 15.0, top: 8.0),
                    ),
                    Container(
                      child: Divider(
                        color: Colors.black12,
                        height: 2.0,
                      ),
                      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                    ),
                    HomeDecorationWidget()
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

        ],
      ),
      bottomNavigationBar: BottomWidget(bottomBloc: _bottomBloc),
      resizeToAvoidBottomPadding: false,
    );
  }
}