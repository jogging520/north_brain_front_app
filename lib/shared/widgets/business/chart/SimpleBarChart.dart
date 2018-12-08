
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool isAnimated;

  const SimpleBarChart(
      {Key key, @required this.seriesList, this.isAnimated}) :
        super(key: key);

  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      seriesList: _buildSampleData(),
      isAnimated: true,
    );
  }


  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: isAnimated,
    );
  }

  static List<charts.Series<OrdinalSales, String>> _buildSampleData() {
    final data = [
      OrdinalSales('2018.1', 30),
      OrdinalSales('2018.2', 130),
      OrdinalSales('2018.3', 28),
      OrdinalSales('2018.4', 56),
      OrdinalSales('2018.5', 29),
      OrdinalSales('2018.6', 99),
    ];

    return [
      charts.Series<OrdinalSales, String>(
          id: 'testScale',
          colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data
      )
    ];
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}