import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:snowrun_app/application/riding/riding_controller/riding_controller_bloc.dart';

@injectable
class MapMarkerClickListener extends OnPointAnnotationClickListener {
  late RidingControllerBloc ridingControllerBloc;

  MapMarkerClickListener(this.ridingControllerBloc);

  @override
  void onPointAnnotationClick(PointAnnotation annotation) {
    int? symbolKey = annotation.symbolSortKey?.toInt();
    if (symbolKey != null) {
      ridingControllerBloc
          .add(RidingControllerEvent.selectMarker(symbolKey));
    }
  }
}
