
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/search/Search.dart';

const _selfHistories = [
  '兰州', '西站', '中心广场', '兰渝铁路', '移动公司', '码农', '主机故障', '怀特', 'MDB', 'HBA卡坏了',
  '用户只要一次性输入搜索关键词就可以通过鼠标点击迅速切换到不同的分类或者引擎', '购物等目前互联网上所能查询到的所有主流资',
  '兰州', '西站', '中心广场', '兰渝铁路', '移动公司', '码农', '主机故障', '怀特', 'MDB', 'HBA卡坏了',
  '用户只要一次性输入搜索关键词就可以通过鼠标点击迅速切换到不同的分类或者引擎', '购物等目前互联网上所能查询到的所有主流资',
  '兰州', '西站', '中心广场', '兰渝铁路', '移动公司', '码农', '主机故障', '怀特', 'MDB', 'HBA卡坏了',
  '用户只要一次性输入搜索关键词就可以通过鼠标点击迅速切换到不同的分类或者引擎', '购物等目前互联网上所能查询到的所有主流资',
  '兰州', '西站', '中心广场', '兰渝铁路', '移动公司', '码农', '主机故障', '怀特', 'MDB', 'HBA卡坏了',
  '用户只要一次性输入搜索关键词就可以通过鼠标点击迅速切换到不同的分类或者引擎', '购物等目前互联网上所能查询到的所有主流资',

];

const int maxLength = 10;

class SearchHistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SearchBloc _searchBloc = BlocProvider.of<SearchBloc>(context);

    _searchBloc.onWidgetInitialized();

    return BlocBuilder<SearchEvent, SearchState>(
      bloc: _searchBloc,
      builder: (BuildContext context, SearchState searchState) {
        return _buildHistoryList(context, _searchBloc, searchState);
      },
    );
  }

  Widget _buildHistoryList(BuildContext context,
      SearchBloc searchBloc, SearchState searchState) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 12.0, top: 20.0),
          child: Container(
            color: Theme.of(context).accentColor,
            child: Text(
                '热门搜索'
            ),
          ),
        ),
        Container(
          margin: new EdgeInsets.only(left: 6.0),
          child: Wrap(
              children: _buildHotHistory(context,)
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 12.0, top: 20.0),
          child: Container(
            color: Theme.of(context).accentColor,
            child: Text(
                '历史搜索'
            ),
          ),
        ),
        Container(
          margin: new EdgeInsets.only(left: 6.0),
          child: Wrap(
              children: _buildSelfHistory(context, searchState)
          ),
        ),
      ],
    );
  }

  List<Widget> _buildHotHistory(BuildContext context) {
    return _selfHistories.map((history) {
      return Container(
        height: 32.0,
        margin: EdgeInsets.all(5.9),
        padding: EdgeInsets.only(left: 10.0, right: 5.0, top: 4.0, bottom: 11.0),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(
              Radius.circular(4.9)
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(history.substring(0, maxLength < history.length ? maxLength : history.length))
          ],
        ),
      );
    }).toList();
  }

  List<Widget> _buildSelfHistory(BuildContext context, SearchState searchState) {
    return searchState.trails == null ?
    <Widget>[] :
    searchState.trails.map((history) {
      return Container(
        height: 32.0,
        margin: EdgeInsets.all(5.9),
        padding: EdgeInsets.only(left: 10.0, right: 5.0, top: 4.0, bottom: 11.0),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(
              Radius.circular(4.9)
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(history.substring(0, maxLength < history.length ? maxLength : history.length))
          ],
        ),
      );
    }).toList();
  }
  
}