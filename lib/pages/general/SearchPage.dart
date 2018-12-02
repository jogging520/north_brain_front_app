
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/widgets/business/BusinessWidget.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchWidget(),
      ),
      body: Container(
        child: Text('search'),
      ),
    );
  }

}