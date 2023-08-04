import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/place/i_place_repository.dart';
import 'package:snowrun_app/domain/place/model/boundary_status.dart';
import 'package:snowrun_app/domain/place/model/boundary_type.dart';
import 'package:snowrun_app/domain/place/model/place.dart';
import 'package:snowrun_app/domain/place/types.dart';


part 'place_event.dart';

part 'place_state.dart';

part 'place_bloc.freezed.dart';

@injectable
class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  final IPlaceRepository _repository;

  PlaceBloc(this._repository) : super(PlaceState.initial()) {
    on<_GetPlaces>((event, emit) async {
      emit(state.copyWith(status: PlaceStatus.progressGetPlaces));
      final failureOrResponse = await _repository.getPlaces();
      emit(
        failureOrResponse.fold(
              (f) => state.copyWith(status: PlaceStatus.failureGetPlaces),
              (newPlaces) => state.copyWith(
            status: PlaceStatus.successGetPlaces,
            places: newPlaces,
          ),
        ),
      );
    });

    on<_CreateBoundary>((event, emit) async {
      emit(state.copyWith(status: PlaceStatus.progressCreateBoundary));
      final failureOrResponse = await _repository.createBoundary(event.placeId,
          event.name, event.boundaryType, event.boundaryStatus, event.polygon);
      emit(
        failureOrResponse.fold(
              (f) => state.copyWith(status: PlaceStatus.failureCreateBoundary),
              (response) => state.copyWith(
            status: PlaceStatus.successCreateBoundary,
          ),
        ),
      );
    });
  }
}