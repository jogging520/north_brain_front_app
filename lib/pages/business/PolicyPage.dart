
import 'package:flutter/material.dart';

final List<Tab> myTabs = <Tab>[
  Tab(text: '涛爷'),
  Tab(text: '马瑛'),
  Tab(text: '武爷'),
  Tab(text: '任工'),
  Tab(text: '贾野'),
  Tab(text: '藏剑'),
  Tab(text: '七秀'),
  Tab(text: '五毒'),
];


class PolicyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.teal,
            title: TabBar(
                unselectedLabelColor: Colors.black54,
                labelColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.white,
                    fontWeight: FontWeight.bold),
                tabs: myTabs,
                isScrollable: true,
                indicatorColor: Colors.white
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Text('1'),
              Text('2'),
              Text('3'),
              Text('4'),
              Text('5'),
              Text('6'),
              Text('7'),
              Text('8'),
            ],
          ),
        resizeToAvoidBottomPadding: false,
      ),
    );
  }

}