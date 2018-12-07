
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/blocs/general/search/Search.dart';
import 'package:north_brain_front_app/shared/blocs/general/trail/Trail.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final SearchBloc _searchBloc = SearchBloc();
  final TrailBloc _trailBloc = TrailBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: SearchBarWidget(searchBloc: _searchBloc,),
      ),
      body: SearchHistoryWidget(trailBloc: _trailBloc,),
    );
  }

}