import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';

part 'riding_controller_event.dart';
part 'riding_controller_state.dart';
part 'riding_controller_bloc.freezed.dart';

@injectable
class RidingControllerBloc extends Bloc<RidingControllerEvent, RidingControllerState> {
  RidingControllerBloc() : super(RidingControllerState.initial()) {
    on<_SelectMarker>((event, emit) async {
            emit(state.copyWith(selectedMarkerSymbolId: event.selectedMarkerSymbolId));
          });
  }
}