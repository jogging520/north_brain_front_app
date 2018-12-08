
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';
import 'package:north_brain_front_app/shared/widgets/business/chart/Chart.dart';

const _tiles = [
  '兰州',
  '西安',
  '广州',
  '北京',
  '青岛',
  '深圳',
  '南宁',
  '兰州',
  '西安',
  '广州',
  '北京',
  '青岛',
  '深圳',
  '南宁',
  '兰州',
  '西安',
  '广州',
  '北京',
  '青岛',
  '深圳',
  '南宁',
  '兰州',
  '西安',
  '广州',
  '北京',
  '青岛',
  '深圳',
  '南宁',
];

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text('测试的页面'),
        )
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {

    return ListView.builder(
      itemCount: _tiles.length,
      itemBuilder: _buildTiles,
    );
  }

  Widget _buildTiles(BuildContext context, int index) {
    return ListTile(
      title: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.width - 200,
        width: MediaQuery.of(context).size.width - 100,
        child: SimpleBarChart.withSampleData(),
      ),
      subtitle: Text(index.toString()),
    );
  }
}