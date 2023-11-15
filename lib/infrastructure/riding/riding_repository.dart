import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/core/page_response.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/place/i_place_repository.dart';
import 'package:snowrun_app/domain/place/model/boundary_status.dart';
import 'package:snowrun_app/domain/place/model/boundary_type.dart';
import 'package:snowrun_app/domain/place/model/place.dart';
import 'package:snowrun_app/domain/place/place_failure.dart';
import 'package:snowrun_app/domain/place/types.dart';
import 'package:snowrun_app/domain/riding/i_riding_repository.dart';
import 'package:snowrun_app/domain/riding/riding_failure.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';
import 'package:snowrun_app/domain/riding/riding_rooms.dart';
import 'package:snowrun_app/infrastructure/api/core_api.dart';
import 'package:snowrun_app/infrastructure/core/page_response_dtos.dart';
import 'package:snowrun_app/infrastructure/error/error_response_dtos.dart';
import 'package:snowrun_app/infrastructure/place/place_dtos.dart';
import 'package:snowrun_app/infrastructure/riding/riding_dtos.dart';

@LazySingleton(as: IRidingRepository)
class RidingRepository implements IRidingRepository {
  final CoreApi _api;

  RidingRepository(this._api);

  @override
  Future<Either<RidingFailure, RidingRoom>> createRidingRoom() async {
    final response = await _api.createRidingRoom();

    if (response.statusCode != 200) {
      return left(const RidingFailure.unexpected());
    }
    final infoJson =
        json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final ridingRoom = RidingRoomDto.fromJson(infoJson);
    return right(ridingRoom.toDomain());
  }

  @override
  Future<Either<RidingFailure, Unit>> deleteRidingRoom(int ridingRoomId) async {
    final response = await _api.deleteRidingRoom(ridingRoomId);

    if (response.statusCode != 200) {
      return left(const RidingFailure.unexpected());
    }
    final infoJson =
        json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    return right(unit);
  }

  @override
  Future<Either<RidingFailure, Unit>> exitRidingRoomName(
      int ridingRoomId) async {
    final response = await _api.exitRidingRoom(ridingRoomId);

    if (response.statusCode != 200) {
      return left(const RidingFailure.unexpected());
    }
    final infoJson =
        json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    return right(unit);
  }

  @override
  Future<Either<RidingFailure, RidingRoom>> getRidingRoom(
      int ridingRoomId) async {
    final response = await _api.getRidingRoom(ridingRoomId);

    if (response.statusCode != 200) {
      return left(const RidingFailure.unexpected());
    }
    final infoJson =
        json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final ridingRoom = RidingRoomDto.fromJson(infoJson);
    return right(ridingRoom.toDomain());
  }

  @override
  Future<Either<RidingFailure, RidingRooms>> getRidingRooms() async {
    final response = await _api.getRidingRooms();

    final PageResponseDto<RidingRoom> pageResponse =
        PageResponseDto.fromHttpResponse(response, (jsonObject) {
      return RidingRoomDto.fromJson(jsonObject).toDomain();
    });

    if (response.statusCode != 200) {
      return left(const RidingFailure.unexpected());
    }

    return right(RidingRooms(
      ridingRooms: ListVO(pageResponse.contents),
      count: IntVO(pageResponse.count),
    ));
  }

  @override
  Future<Either<RidingFailure, RidingRoom>> joinRidingRoomName(
      int ridingRoomId) async {
    final response = await _api.joinRidingRoom(ridingRoomId);

    if (response.statusCode != 200) {
      return left(const RidingFailure.unexpected());
    }
    final infoJson =
        json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final ridingRoom = RidingRoomDto.fromJson(infoJson);
    return right(ridingRoom.toDomain());
  }

  @override
  Future<Either<RidingFailure, RidingRoom>> updateRidingRoomName(
      int ridingRoomId, String name) async {
    final response = await _api.updateRidingRoomName(
        ridingRoomId, UpdateRidingRoomNameRequestDto.fromDomain(name));

    if (response.statusCode != 200) {
      return left(const RidingFailure.unexpected());
    }
    final infoJson =
        json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final ridingRoom = RidingRoomDto.fromJson(infoJson);
    return right(ridingRoom.toDomain());
  }
}
