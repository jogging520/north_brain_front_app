
import 'package:flutter/material.dart';

class DiscoveryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      padding: EdgeInsets.only(left: 10.0),
      height: 30.0,
      width: 260.0,
      decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.all(Radius.circular(58.0))
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.search,
            size: 20.0,
            color: Colors.red,
          ),
          Container(
            height: 35.0,
            width: 135.0,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Center(
                child: Form(
                  autovalidate: false,
                  child: GestureDetector(
                    onTap: () {
                      print('search......');
                    },
                    child: TextFormField(
                      enabled: true,
                      autofocus: false,
                      style: TextStyle(
                          color: Colors.teal),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration.collapsed(
                          fillColor: Colors.white,
                          hintText: '请北脑......',
                          hintStyle: TextStyle(
                              fontSize: 13.0,
                              color:
                              Colors.black45),
                          filled: false
                      ),
                    ),
                  ),

                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}