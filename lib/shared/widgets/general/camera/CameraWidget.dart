
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CameraWidgetState();
}

class CameraWidgetState extends State<CameraWidget> {
  File _image;

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MaterialButton(
          child: Text('照相'),
          onPressed: _getImage,
        ),
        Container(
          child: Center(
              child: _image == null
                  ? Text('No image selected.')
                  : Image.file(_image)
          ),
        )
      ],
    );

  }
}