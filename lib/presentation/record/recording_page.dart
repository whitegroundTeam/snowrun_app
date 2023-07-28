import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';


class RecordingPage extends StatefulWidget {
  const RecordingPage({super.key});

  @override
  State createState() => RecordingPageState();
}

class AnnotationClickListener extends OnPointAnnotationClickListener {
  @override
  void onPointAnnotationClick(PointAnnotation annotation) {
    print("onAnnotationClick, id: ${annotation.id}");
  }
}

class RecordingPageState extends State<RecordingPage> {
  MapboxMap? mapboxMap;
  PointAnnotation? pointAnnotation;
  PointAnnotationManager? pointAnnotationManager;

  _onMapCreated(MapboxMap mapboxMap) {
    this.mapboxMap = mapboxMap;
    mapboxMap.annotations.createPointAnnotationManager().then((value) async {
      pointAnnotationManager = value;
      final ByteData bytes =
      await rootBundle.load('assets/pngs/marker.png');
      final Uint8List list = bytes.buffer.asUint8List();
      createOneAnnotation(list);
    });
  }

  void createOneAnnotation(Uint8List list) {
    for(int i=0; i < positionMarkers.length; i++){
        pointAnnotationManager
            ?.create(PointAnnotationOptions(
            geometry: Point(
                coordinates:
                // Position(126.6338237,37.4064278,)).toJson(),
                positionMarkers[i]).toJson(),
            textField: markerNames[i],
            textOffset: [0.0, -2.0],
            iconSize: 0.2,
            iconOffset: [0.0, -5.0],
            symbolSortKey: 10,
            image: list))
            .then((value) => pointAnnotation = value);
    }
  }

  List<Position> positionMarkers = [
    Position(126.6338237,37.4064278),
    Position(126.6299832,37.4066198),
    Position(126.6297943,37.404984),
    Position(126.6287445,37.4061404),
  ];

  List<String> markerNames = [
    '쥴리',
    '댄',
    '캐틀린',
    '루만'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            top: 10.0,
              left: 10.0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.black,
                  child: const Icon(CupertinoIcons.back, color: Colors.black,))
          ),
          MapWidget(
            key: const ValueKey('mapWidget'),
            resourceOptions: ResourceOptions(accessToken: 'pk.eyJ1Ijoid2hpdGVncm91bmQiLCJhIjoiY2xrYW96N2RkMDd5eTNyanM2ZmVjZ2E4ciJ9.DFZG8kD1ahfSc1sk-cN-bw'),
            onMapCreated: _onMapCreated,
            cameraOptions: CameraOptions(
                center: Point(
                    coordinates: Position(
                      126.6338237,37.4064278,
                      )
                ).toJson(),
                zoom: 14.0
            ),
          ),
          Positioned(
            left: 20.0,
            right: 20.0,
            bottom: 40.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('현재구역', style: TextStyle(fontSize: 24),),
                      const SizedBox(height: 24,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: const EdgeInsets.all(0.0),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: const Icon(Icons.stop, size:80,color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
        ]
      ),
    );
  }
}
