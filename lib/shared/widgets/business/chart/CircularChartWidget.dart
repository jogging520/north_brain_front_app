
import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class CircularChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: AnimatedCircularChart(
              size: Size(100.0, 100.0),
              initialChartData: <CircularStackEntry>[
                CircularStackEntry(
                  <CircularSegmentEntry>[
                    CircularSegmentEntry(
                      33.33,
                      Colors.blue,
                      rankKey: '完成'
                    ),
                    CircularSegmentEntry(
                        66.67,
                        Colors.purple,
                        rankKey: '进行中'
                    )
                  ],
                  rankKey: '进度'
                )
              ],
              chartType: CircularChartType.Radial,
              percentageValues: true,
              holeLabel: '1/3',
              labelStyle: TextStyle(
                color: Colors.blueGrey[600],
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('统计')
            ],
          )
        ],
      ),
    );
  }

}