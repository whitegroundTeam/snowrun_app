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
                    coordinates: Position(6.0033416748046875,
                      43.70908256335716,)
                ).toJson(),
                zoom: 10.0
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
