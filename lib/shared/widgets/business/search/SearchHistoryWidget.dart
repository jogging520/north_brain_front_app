
import 'package:flutter/material.dart';

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

const _hotHistories = [
  '智能搜索引擎', '是结合了人工智能技术的新', '一代搜索引擎。', '他除了能提供传统的快速检索',
  '、相关度排序等功能', '，还能提供用户角色登记、用户兴趣自动识别', '内容的语义理解、智能信息化过滤和推送等功能。',
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
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 12.0, top: 20.0),
          child: Text(
            '热门搜索'
          ),
        ),
        Container(
          margin: new EdgeInsets.only(left: 6.0),
          child: Wrap(
            children: _hotHistory(context)
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 12.0, top: 20.0),
          child: Text(
              '历史搜索'
          ),
        ),
        Container(
          margin: new EdgeInsets.only(left: 6.0),
          child: Wrap(
              children: _selfHistory(context)
          ),
        ),
      ],
    );
  }
  
  List<Widget> _selfHistory(BuildContext context) {
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

  List<Widget> _hotHistory(BuildContext context) {
    return _hotHistories.map((history) {
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