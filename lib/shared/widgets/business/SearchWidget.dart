
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/business/search/Search.dart';

class SearchWidget extends StatelessWidget {

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
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      padding: EdgeInsets.only(left: 10.0),
      height: 30.0,
      width: 260.0,
      decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.all(Radius.circular(58.0))
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.search,
            size: 20.0,
            color: Colors.red,
          ),
          Container(
            height: 35.0,
            width: 135.0,
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
                      enabled: true,
                      autofocus: false,
                      style: TextStyle(
                          color: Colors.teal),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration.collapsed(
                          fillColor: Colors.white,
                          hintText: '请北脑......',
                          hintStyle: TextStyle(
                              fontSize: 13.0,
                              color:
                              Colors.black45),
                          filled: false
                      ),
                    ),
                  ),

                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}