
import 'package:flutter/material.dart';
import 'package:flutter_amap/flutter_amap.dart';
import 'package:north_brain_front_app/shared/services/general/GeneralService.dart';

class StationPage extends StatelessWidget {
  final FlutterAmap _flutterAmap = FlutterAmap();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('高德地图'),
      ),
      body: Center(
        child: InkWell(
          child: Text('点我呀'),
          onTap: _show,
        ),
      ),
    );
  }

  void _show() {
    _flutterAmap.show(
      mapview: AMapView(
        centerCoordinate: LatLng(36.0925283829,103.7159156799),
        zoomLevel: 13.0,
        mapType: MapType.standard,
        showsUserLocation: true
      ),
      title: TitleOptions(title: '仓库'),
    );

    _flutterAmap.onLocationUpdated.listen((Location location) {
      //CommonService.hint('变位置了。');
    });

  }
}