import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/domain/riding/i_riding_repository.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';

part 'riding_actor_event.dart';

part 'riding_actor_state.dart';

part 'riding_actor_bloc.freezed.dart';

@injectable
class RidingActorBloc extends Bloc<RidingActorEvent, RidingActorState> {
  final IRidingRepository _ridingRepository;

  RidingActorBloc(this._ridingRepository) : super(RidingActorState.initial()) {
    on<_CreateRidingRoom>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse = await _ridingRepository.createRidingRoom();
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: DefaultStatus.failure),
          (createdRidingRoom) {
            return state.copyWith(
              status: DefaultStatus.success,
              ridingRoom: createdRidingRoom,
            );
          },
        ),
      );
    });

    on<_DeleteRidingRoom>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse =
          await _ridingRepository.deleteRidingRoom(event.ridingRoomId);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: DefaultStatus.failure),
          (response) => state.copyWith(
            status: DefaultStatus.success,
            ridingRoom: null,
          ),
        ),
      );
    });

    on<_ExitRidingRoom>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse =
          await _ridingRepository.exitRidingRoomName(event.ridingRoomId);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: DefaultStatus.failure),
          (response) =>
              state.copyWith(status: DefaultStatus.success, ridingRoom: null),
        ),
      );
    });

    on<_JoinRidingRoom>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse =
          await _ridingRepository.joinRidingRoomName(event.ridingRoomId);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: DefaultStatus.failure),
          (joinedRidingRoom) => state.copyWith(
            status: DefaultStatus.success,
            ridingRoom: joinedRidingRoom,
          ),
        ),
      );
    });
  }
}
