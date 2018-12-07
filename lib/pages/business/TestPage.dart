
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

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
    return GestureDetector(
      onTap: () {
        CommonService.hint(_tiles[index]);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 2.0),
        color: index.isEven ? Colors.green : Colors.grey,
        child: ListTile(
          title: Text(
            _tiles[index],
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(Icons.build),
          subtitle: Text(index.toString()),
        ),
      ),
    );
  }
}