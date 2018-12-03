
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
        return _searchBar(context, _searchBloc, searchState);
      },
    );
  }

  Widget _searchBar(BuildContext context, SearchBloc searchBloc, SearchState searchState) {
    final TextEditingController _textEditingController = TextEditingController();

    return Container(
      margin: EdgeInsets.only(left: 10.0),
      padding: EdgeInsets.only(left: 10.0),
      alignment: Alignment.center,
      height: 30.0,
      width: MediaQuery.of(context).size.width - 100,
      decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.all(Radius.circular(58.0))
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              height: 35.0,
              width: 200,
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
                            hintText: '请输入要搜索的内容',
                            filled: false
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print(_textEditingController.value);
            },
          ),
        ],
      ),
    );
  }

}