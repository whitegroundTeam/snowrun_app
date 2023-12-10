import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:snowrun_app/application/location/location_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/injection.dart';

class RecordingPage extends StatefulWidget {
  const RecordingPage({super.key});

  @override
  State createState() => RecordingPageState();
}

class AnnotationClickListener extends OnPointAnnotationClickListener {
  @override
  void onPointAnnotationClick(PointAnnotation annotation) {
    debugPrint("onAnnotationClick, id: ${annotation.id}");
  }
}

class RecordingPageState extends State<RecordingPage> {
  final _locationBloc = getIt<LocationBloc>();
  final _userBloc = getIt<UserBloc>();

  Timer? _timer;

  MapboxMap? mapboxMap;
  PointAnnotation? pointAnnotation;
  PointAnnotationManager? pointAnnotationManager;
  bool isCreatedMap = false;

  @override
  void initState() {
    super.initState();
    _timer =
        Timer.periodic(const Duration(seconds: 10), (Timer t) => _getUsers());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
            create: (context) => _userBloc),
        BlocProvider<LocationBloc>(
            create: (context) =>
                _locationBloc..add(const LocationEvent.getCurrentLocation())),
        BlocListener<LocationBloc, LocationState>(
          listener: (context, state) async {
            if (state.status == LocationStatus.successGetCurrentLocation) {
              _userBloc.add(UserEvent.updateCurrentLocation(
                  state.userLocation.lat.getOrCrash(),
                  state.userLocation.lng.getOrCrash()));
            }
          },
        ),
        BlocListener<UserBloc, UserState>(
          listener: (context, state) async {
            if (state.status == UserStatus.successGetUsers) {
              await updateMarkers(state.users);
            } else if (state.status ==
                UserStatus.successUpdateCurrentLocation) {
              // _userBloc.add(const UserEvent.getUsers());
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                  child: const Icon(
                    CupertinoIcons.back,
                    color: Colors.black,
                  ))),
          MapWidget(
            key: const ValueKey('mapWidget'),
            resourceOptions: ResourceOptions(
                accessToken:
                    dotenv.env['MAPBOX_ACCESS_TOKEN'] ?? ""),
            onMapCreated: _onMapCreated,
            styleUri: "mapbox://styles/mapbox/outdoors-v12",
            cameraOptions: CameraOptions(
                center: Point(
                    coordinates: Position(
                  // 126.6338237,
                  // 37.4064278,
                  128.6803521,
                  37.6390034,
                )).toJson(),
                zoom: 14.0),
          ),
          Positioned(
              left: 20.0,
              right: 20.0,
              bottom: 40.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '현재구역',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        '여기에요',
                        style: TextStyle(fontSize: 18),
                      ),
                      // GestureDetector(
                      //   onTap: () {},
                      //   child: Container(
                      //     padding: const EdgeInsets.all(0.0),
                      //     height: 100,
                      //     width: 100,
                      //     decoration: BoxDecoration(
                      //         color: Colors.black,
                      //         borderRadius: BorderRadius.circular(100)),
                      //     child: const Icon(
                      //       Icons.stop,
                      //       size: 80,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              )),
        ]),
      ),
    );
  }

  void _getUsers() {
    _locationBloc.add(const LocationEvent.getCurrentLocation());
  }

  _onMapCreated(MapboxMap mapboxMap) {
    this.mapboxMap = mapboxMap;
    mapboxMap.annotations.createPointAnnotationManager().then((value) async {
      pointAnnotationManager = value;
    });
    setState(() {
      isCreatedMap = true;
    });
  }

  updateMarkers(List<User> users) async {
    if (!isCreatedMap) {
      return;
    }
    debugPrint("UPDATEMARKERS :: ${users.length}");
    pointAnnotationManager?.deleteAll();
    for (var user in users) {
      String avatarPath = "assets/webp/snowrun_icon.webp";
      // if (user.nickname.getOrCrash() == "줄리") {
      //   avatarPath = "assets/webp/julie_avatar.png";
      // } else if (user.nickname.getOrCrash() == "댄") {
      //   avatarPath = "assets/webp/dan_avatar.png";
      // } else if (user.nickname.getOrCrash() == "케틀린") {
      //   avatarPath = "assets/webp/kathlyn_avatar.png";
      // } else if (user.nickname.getOrCrash() == "루만") {
      //   avatarPath = "assets/webp/luman_avatar.png";
      // }

      final ByteData bytes = await rootBundle.load(avatarPath);
      final Uint8List avatarData = bytes.buffer.asUint8List();
      double? lat = user.location?.lat.getOrCrash();
      double? lng = user.location?.lng.getOrCrash();

      if (lat != null && lng != null) {
        pointAnnotationManager
            ?.create(PointAnnotationOptions(
                geometry: Point(coordinates: Position(lng, lat)).toJson(),
                textField: user.nickname.getOrCrash(),
                textSize: 24,
                textHaloColor: 0xffffaacc,
                // textAnchor: TextAnchor.BOTTOM,
                textColor: 0xff00ddff,
                textHaloWidth: 30,
                textOffset: [0.0, -2.0],
                iconSize: 1.0,
                iconOffset: [0.0, -5.0],
                symbolSortKey: 10,
                image: avatarData))
            .then((value) => pointAnnotation = value);
      }
    }
  }
}
