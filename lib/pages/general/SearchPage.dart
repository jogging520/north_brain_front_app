
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/search/Search.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final SearchBloc _searchBloc = SearchBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      bloc: _searchBloc,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: SearchBarWidget(),
        ),
        body: SearchHistoryWidget(),
      ),
    );
  }

}