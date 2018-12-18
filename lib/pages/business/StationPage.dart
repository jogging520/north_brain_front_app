
import 'package:flutter/material.dart';
import 'package:amap_base_navi/amap_base.dart';
import 'package:north_brain_front_app/shared/styles/general/Style.dart';
import 'package:north_brain_front_app/shared/widgets/general/camera/Camera.dart';

const markerList = const [
  LatLng(36.0925283829,103.7159156799),
  LatLng(36.0935283829,103.7169156799),
  LatLng(36.0945283829,103.7179156799),
  LatLng(36.0955283829,103.7189156799),
  LatLng(36.0965283829,103.7199156799),
];

class StationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StationPageState();
}

class StationPageState extends State<StationPage> {

  AMapController _amapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('高德地图'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return AMapView(
      onAMapViewCreated: (controller) {
        _amapController = controller;
        _amapController.markerClickedEvent.listen((marker) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text(marker.toString())));
        });

        controller.addMarkers(
            markerList.map((latLng) => MarkerOptions(
              icon: ImageStyle.IMAGE_BOTTOM_NAVIGATOR_STATION,
              position: latLng,
              title: '兰州真好',
              snippet: '呵呵'
            ))
        );
      },
      amapOptions: AMapOptions(),
    );
  }

  @override
  void dispose() {
    _amapController.dispose();
    super.dispose();
  }
}