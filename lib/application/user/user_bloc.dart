import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/user/i_user_repository.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/domain/user/model/user_location.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _repository;

  UserBloc(this._repository) : super(UserState.initial()) {
    on<UserEvent>((event, emit) async {
      emit(state.copyWith(status: UserStatus.progressGetUsers));
      final failureOrResponse = await _repository.getUsers();
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: UserStatus.failureGetUsers),
          (users) => state.copyWith(
            status: UserStatus.successGetUsers,
            users: users,
          ),
        ),
      );
    });

    on<_UpdateCurrentLocation>((event, emit) async {
      emit(state.copyWith(status: UserStatus.progressUpdateCurrentLocation));
      final failureOrResponse = await _repository.updateCurrentLocation(
          UserLocation(lat: DoubleVO(event.lat), lng: DoubleVO(event.lng)));
      emit(
        failureOrResponse.fold(
          (f) =>
              state.copyWith(status: UserStatus.failureUpdateCurrentLocation),
          (response) => state.copyWith(
            status: UserStatus.successUpdateCurrentLocation,
          ),
        ),
      );
    });

    on<_SavePushToken>((event, emit) async {
      final failureOrUser = await _repository.savePushToken(event.token);
      failureOrUser.fold(
        (f) {
          // print('failed save push token');
        },
        (_) {
          // print('success save push token');
        },
      );
    });

    on<_SaveUser>((event, emit) {
      emit(state.copyWith(
        status: UserStatus.successGetUsers,
        user: event.user.copyWith(),
      ));
    });
  }
}
