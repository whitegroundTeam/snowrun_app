import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';

import 'package:flutter/widgets.dart';

class SnowrunMapMarker extends StatefulWidget {
  const SnowrunMapMarker({super.key});

  @override
  State createState() => SnowrunMapMarkerState();
}

class SnowrunMapMarkerState extends State<SnowrunMapMarker> {
  GlobalKey repaintBoundaryKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: repaintBoundaryKey,
      child: Container(
        width: 150,
        height: 100,
        color: Colors.pink,
        child: const CommonNetworkImage(
            height: 56,
            width: 56,
            imageBackgroundColor: AppStyle.transparent,
            imageUrl:
            "https://snowrun-server-bucket-production.s3.ap-northeast-2.amazonaws.com/profile/profile_snow_ball_12.webp"),
      ),
    );
  }

  Future<Uint8List> captureWidgetToUint8List() async {
    final RenderRepaintBoundary boundary = repaintBoundaryKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage();
    final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List pngBytes = byteData!.buffer.asUint8List();
    print(pngBytes);
    return pngBytes;
  }

}