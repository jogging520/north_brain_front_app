
import 'package:flutter/material.dart';

class CategoryChipsWidget extends StatelessWidget {
  final List<String> categories;

  const CategoryChipsWidget({Key key, this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromHeight(40.0),
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(top: 8.0, left: 20.0),
          itemBuilder: _buildChips),
    );
  }

  Widget _buildChips(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Chip(
        label: Text(categories[index]),
        labelStyle: Theme.of(context).textTheme.caption,
        backgroundColor: Colors.black12,
      ),
    );
  }

}