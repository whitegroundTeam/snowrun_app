import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/location/i_location_repository.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';

part 'location_event.dart';

part 'location_state.dart';

part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ILocationRepository _repository;

  LocationBloc(this._repository) : super(LocationState.initial()) {
    on<_GetCurrentLocation>((event, emit) async {
      emit(state.copyWith(status: LocationStatus.progressGetCurrentLocation));
      final failureOrResponse = await _repository.getCurrentLocation();
      emit(
        failureOrResponse.fold(
          (f) =>
              state.copyWith(status: LocationStatus.failureGetCurrentLocation),
          (newCurrentLocation) {
            return state.copyWith(
              status: LocationStatus.successGetCurrentLocation,
              userLocation: UserLocation(
                  lat: DoubleVO(newCurrentLocation.latitude),
                  lng: DoubleVO(newCurrentLocation.longitude)),
            );
          },
        ),
      );
    });
  }
}
