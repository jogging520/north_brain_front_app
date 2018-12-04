
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/search/Search.dart';

class SearchBarWidget extends StatelessWidget {

  final SearchBloc _searchBloc = SearchBloc();

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
    final TextEditingController _textEditingController = TextEditingController();

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
                  autovalidate: false,
                  child: GestureDetector(
                    onTap: () {
                      print('search......');
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
              onPressed: () {
                print(_textEditingController.value);
              },
            ),
          )
        ],
      ),
    );
  }

}