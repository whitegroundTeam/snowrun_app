import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';


class RecordingPage extends StatefulWidget {
  const RecordingPage({super.key});

  @override
  State createState() => RecordingPageState();
}

class RecordingPageState extends State<RecordingPage> {
  MapboxMap? mapboxMap;

  _onMapCreated(MapboxMap mapboxMap) {
    this.mapboxMap = mapboxMap;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapWidget(
        key: const ValueKey('mapWidget'),
        resourceOptions: ResourceOptions(accessToken: 'pk.eyJ1Ijoid2hpdGVncm91bmQiLCJhIjoiY2xrYW96N2RkMDd5eTNyanM2ZmVjZ2E4ciJ9.DFZG8kD1ahfSc1sk-cN-bw'),
        onMapCreated: _onMapCreated,
        cameraOptions: CameraOptions(
          center: Point(
            coordinates: Position(6.0033416748046875,
              43.70908256335716,)
          ).toJson(),
          zoom: 10.0
        ),
      ),
    );
  }
}
