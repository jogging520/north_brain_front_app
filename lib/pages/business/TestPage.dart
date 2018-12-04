
import 'package:flutter/material.dart';

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

    return Card(
      elevation: 2.0,
      child: ListTile(
        isThreeLine: false,
        contentPadding: const EdgeInsets.all(8.0),
        leading: Icon(Icons.add_circle, color: Colors.green, size: 28.0),
        title: RichText(
          text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'abc',
                  style: Theme.of(context).textTheme.body2.apply(fontWeightDelta: 2),
                ),
                TextSpan(
                  text: 'def',
                  style: Theme.of(context).textTheme.body2.apply(fontWeightDelta: 2),
                ),
                TextSpan(
                  text: 'ggg',
                  style: Theme.of(context).textTheme.body2.apply(fontWeightDelta: 2),
                )
              ]
          ),
        ),
        subtitle: Text('子标题'),
        trailing: Container(
          alignment: Alignment.topRight,
          width: MediaQuery.of(context).size.width * .3,
          child: new Text('测试',
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: Theme.of(context).textTheme.body2.apply(fontWeightDelta: 2)),
        ),
      ),
    );
  }
}