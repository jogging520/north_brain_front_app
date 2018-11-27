
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:north_brain_front_app/shared/widgets/business/chart/Chart.dart';


class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TestPageState();
}

class TestPageState extends State<TestPage> {

  @override
  Widget build(BuildContext context) {
    return CircularChartWidget();
  }


}