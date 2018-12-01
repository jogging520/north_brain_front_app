
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:north_brain_front_app/shared/widgets/business/chart/Chart.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:datetime_picker_formfield/time_picker_formfield.dart';

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TestPageState();
}

class TestPageState extends State<TestPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试页面'),
      ),
      body: _body(),
    );
  }


  Widget _body() {
    final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
    final timeFormat = DateFormat("h:mm a");

    return Padding(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          CircularChartWidget(),
          CircularChartWidget(),
          FlatButton(
            onPressed: () {
              DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  onChanged: (date) {
                    print('$date');
                  },
                  onConfirm: (date) {
                    print('$date');
                  },
                  currentTime: DateTime(2018, 12, 1, 10, 22, 33),
                  locale: LocaleType.zh
              );
            },
            child: Text('日期'),
          ),
          DateTimePickerFormField(
            format: dateFormat,
            decoration: InputDecoration(labelText: 'Date'),
            locale: Locale('zh','CH'),
            onChanged: (date) {print('$date');},
          ),
          TimePickerFormField(
            format: timeFormat,
            decoration: InputDecoration(labelText: 'Time'),

            onChanged: (t) => print('$t'),
          ),
        ],
      ),
    );
  }
}