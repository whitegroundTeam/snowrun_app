import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class Mapbox extends StatefulWidget {
  const Mapbox({super.key});

  @override
  State createState() => MapboxState();
}

class MapboxState extends State<Mapbox> {
  @override
  Widget build(BuildContext context) {
    return MapWidget(
        resourceOptions:
        ResourceOptions(accessToken: 'pk.eyJ1Ijoid2hpdGVncm91bmQiLCJhIjoiY2xrYW96N2RkMDd5eTNyanM2ZmVjZ2E4ciJ9.DFZG8kD1ahfSc1sk-cN-bw')
    );
  }
}
