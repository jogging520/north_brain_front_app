
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/search/Search.dart';

class SearchBarWidget extends StatefulWidget {
  final SearchBloc _searchBloc;

  const SearchBarWidget({Key key, searchBloc}) :
      _searchBloc = searchBloc,
        super(key: key);

  @override
  State<StatefulWidget> createState() => SearchBarWidgetState(searchBloc: _searchBloc);
}

class SearchBarWidgetState extends State<SearchBarWidget> {
  final SearchBloc _searchBloc;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();

  SearchBarWidgetState({@required searchBloc}): _searchBloc = searchBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchEvent, SearchState> (
      bloc: _searchBloc,
      builder: (BuildContext context, SearchState searchState) {
        return _buildSearchBar(context, _searchBloc, searchState);
      },
    );
  }

  Widget _buildSearchBar(BuildContext context, SearchBloc searchBloc, SearchState searchState) {
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
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: searchState.isSearchButtonEnabled
                  ? _onSearchButtonPressed
                  : null,
            ),
          )
        ],
      ),
    );
  }

  void _onSearchButtonPressed() {
    _searchBloc.onSearchButtonPressed(_textEditingController.text);
  }
}