
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/pages/business/BusinessPage.dart';
import 'package:north_brain_front_app/routes/Application.dart';
import 'package:north_brain_front_app/shared/blocs/general/authentication/Authentication.dart';
import 'package:north_brain_front_app/shared/blocs/general/bottom/Bottom.dart';
import 'package:north_brain_front_app/shared/common/Common.dart';
import 'package:north_brain_front_app/shared/constants/general/GeneralConstants.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

class HomePage extends StatefulWidget{
  static List<String> role = const <String>['admin', 'operator'];

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  ScrollController _scrollController = ScrollController();
  TextEditingController _textController = TextEditingController();
  bool isSearching = true;
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc _authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);
    final BottomBloc _bottomBloc =
    BlocProvider.of<BottomBloc>(context);

    return Scaffold(
      drawer: MenuWidget(),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: TextField(
                  controller: _textController,
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  style: Theme.of(context).textTheme.subhead,
                  onChanged: null,
                  autofocus: true,
                  textCapitalization: TextCapitalization.none,
                  decoration: InputDecoration.collapsed(hintText: '请输入搜索内容'),
                ),
              actions: <Widget>[

              ],
              pinned: true,
              floating: true,
              titleSpacing: 3.0,
              elevation: GeneralConstants.CONSTANT_PAGE_APP_BAR_ELEVATION,
              forceElevated: innerBoxIsScrolled,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(8.0),
                child: Container(
                  height: 38.0,
                  child: TabBar(
                    controller: _tabController,
                    indicatorColor: Theme.of(context).accentIconTheme.color,
                    unselectedLabelColor: Theme.of(context).disabledColor,
                    labelColor: Theme.of(context).accentIconTheme.color,
                    tabs: <Widget>[
                      Tab(icon: Icon(Icons.description),),
                      Tab(icon: Icon(Icons.storage),)
                    ],
                  ),
                ),
              ),
            )
          ];
        },
        body: TabBarView(
            controller: _tabController,
            children: [
              PolicyDetailPage(),
              PolicyPage()
            ]),
      ),
      bottomNavigationBar: BottomWidget(bottomBloc: _bottomBloc),
      resizeToAvoidBottomPadding: false,
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

}