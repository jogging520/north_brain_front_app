
import 'package:flutter/material.dart';

class CategoryChipsWidget extends StatelessWidget {
  final List<String> categories;

  const CategoryChipsWidget({Key key, this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _chips(context),
    );
  }

  List<Widget> _chips(BuildContext context) {
    return categories.map((category) {
      return Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Chip(
          label: Text(category),
          labelStyle: Theme.of(context).textTheme.caption,
          backgroundColor: Colors.black12,
        ),
      );
    }).toList();
  }

}