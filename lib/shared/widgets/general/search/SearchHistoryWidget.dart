
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:north_brain_front_app/shared/blocs/general/trail/Trail.dart';

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
  final TrailBloc _trailBloc;

  const SearchHistoryWidget({Key key, trailBloc, searchBloc}) :
        _trailBloc = trailBloc,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    _trailBloc.onWidgetInitialized();

    return BlocBuilder<TrailEvent, TrailState>(
      bloc: _trailBloc,
      builder: (BuildContext context, TrailState trailState) {
        return _buildHistoryList(context, _trailBloc, trailState);
      },
    );
  }

  Widget _buildHistoryList(BuildContext context,
      TrailBloc trailBloc, TrailState trailState) {
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
              children: _buildHotHistory(context, trailState)
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
              children: _buildSelfHistory(context)
          ),
        ),
      ],
    );
  }

  List<Widget> _buildSelfHistory(BuildContext context) {
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

  List<Widget> _buildHotHistory(BuildContext context, TrailState trailState) {
    return trailState.trails == null ?
    <Widget>[] :
    trailState.trails.map((history) {
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