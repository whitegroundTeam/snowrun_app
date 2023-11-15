import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/riding/riding_failure.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';
import 'package:snowrun_app/domain/riding/riding_rooms.dart';

abstract class IRidingRepository {
  Future<Either<RidingFailure, RidingRooms>> getRidingRooms();

  Future<Either<RidingFailure, RidingRoom>> getRidingRoom(int ridingRoomId);

  Future<Either<RidingFailure, Unit>> deleteRidingRoom(int ridingRoomId);

  Future<Either<RidingFailure, RidingRoom>> createRidingRoom();

  Future<Either<RidingFailure, RidingRoom>> updateRidingRoomName(
      int ridingRoomId, String name);

  Future<Either<RidingFailure, Unit>> exitRidingRoomName(int ridingRoomId);

  Future<Either<RidingFailure, RidingRoom>> joinRidingRoomName(int ridingRoomId);
}
