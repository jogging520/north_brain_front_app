
import 'package:flutter/material.dart';
import 'package:north_brain_front_app/shared/widgets/general/GeneralWidget.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProfileWidget(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}