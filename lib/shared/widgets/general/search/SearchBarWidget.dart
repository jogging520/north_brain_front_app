
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/search/Search.dart';
import 'package:north_brain_front_app/shared/blocs/general/trail/Trail.dart';

class SearchBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchBarWidgetState();
}

class SearchBarWidgetState extends State<SearchBarWidget> {
  final SearchBloc _searchBloc = SearchBloc();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TrailBloc _trailBloc = BlocProvider.of<TrailBloc>(context);

    return BlocBuilder<SearchEvent, SearchState> (
      bloc: _searchBloc,
      builder: (BuildContext context, SearchState searchState) {
        return _buildSearchBar(context, _searchBloc, searchState, _trailBloc);
      },
    );
  }

  Widget _buildSearchBar(BuildContext context, SearchBloc searchBloc,
      SearchState searchState, TrailBloc trailBloc) {


    return Container(
      margin: EdgeInsets.only(right: 50.0),
      padding: EdgeInsets.only(left: 10.0),
      alignment: Alignment.center,
      height: 35.0,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Center(
                child: Form(
                  key: _formKey,
                  autovalidate: false,
                  child: GestureDetector(
                    onTap: () {
                      print(_textEditingController.value);
                    },
                    child: TextFormField(
                      controller: _textEditingController,
                      enabled: true,
                      autofocus: false,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration.collapsed(
                          hintText: '请输入搜索内容',
                          filled: false
                      ),
                      onEditingComplete: searchState.isSearchButtonEnabled ?
                          () {
                        _onSearchButtonPressed(trailBloc);
                      } : null,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: searchState.isSearchButtonEnabled ?
                  () {
                _onSearchButtonPressed(trailBloc);
              } : null,
            ),
          )
        ],
      ),
    );
  }

  void _onSearchButtonPressed(TrailBloc trailBloc) {
    _searchBloc.onSearchButtonPressed(_textEditingController.text);
    trailBloc.onSearchButtonPressed(_textEditingController.text);
  }
}