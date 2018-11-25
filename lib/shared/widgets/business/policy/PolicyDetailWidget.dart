
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:north_brain_front_app/shared/blocs/business/policy/detail/PolicyDetail.dart';

const String _markdownData = """# 北脑科技
优秀的企业就应该是这样的，有责任！！！

## 企业模板
孔家崖500强

- 企业文化
- To better clarify
- Your points

## Links
You can use [hyperlinks](hyperlink) in markdown

## Images

You can include images:

![Flutter logo](https://flutter.io/images/flutter-mark-square-100.png#100x100)

## Markdown widget

This is an example of how to create your own Markdown widget:

    new Markdown(data: 'Hello _world_!');

## Code blocks
Formatted Dart code looks really pretty too:

```
void main() {
  runApp(new MaterialApp(
    home: new Scaffold(
      body: new Markdown(data: markdownData)
    )
  ));
}
```

Enjoy!
""";

class PolicyDetailWidget extends StatelessWidget {
  final String _id;
  final PolicyDetailBloc _policyDetailBloc;

  const PolicyDetailWidget({
    Key key,
    @required String id,
    @required PolicyDetailBloc policyDetailBloc}):
        _id = id,
        _policyDetailBloc = policyDetailBloc,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Markdown(data: _markdownData,);
  }

}