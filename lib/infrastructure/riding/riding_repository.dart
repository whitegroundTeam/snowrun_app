import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:doortoout/domain/core/page_response.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/place/i_place_repository.dart';
import 'package:doortoout/domain/place/model/boundary_status.dart';
import 'package:doortoout/domain/place/model/boundary_type.dart';
import 'package:doortoout/domain/place/model/place.dart';
import 'package:doortoout/domain/place/place_failure.dart';
import 'package:doortoout/domain/place/types.dart';
import 'package:doortoout/domain/riding/i_riding_repository.dart';
import 'package:doortoout/domain/riding/riding_failure.dart';
import 'package:doortoout/domain/riding/riding_room.dart';
import 'package:doortoout/domain/riding/riding_rooms.dart';
import 'package:doortoout/infrastructure/api/core_api.dart';
import 'package:doortoout/infrastructure/core/page_response_dtos.dart';
import 'package:doortoout/infrastructure/error/error_response_dtos.dart';
import 'package:doortoout/infrastructure/place/place_dtos.dart';
import 'package:doortoout/infrastructure/riding/riding_dtos.dart';

@LazySingleton(as: IRidingRepository)
class RidingRepository implements IRidingRepository {
  final CoreApi _api;

  RidingRepository(this._api);

  @override
  Future<Either<RidingFailure, RidingRoom>> createRidingRoom() async {
    final response = await _api.createRidingRoom();

    if (response.statusCode < 200 || response.statusCode >= 300) {
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

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return left(const RidingFailure.unexpected());
    }
    return right(unit);
  }

  @override
  Future<Either<RidingFailure, Unit>> exitRidingRoomName(
      int ridingRoomId) async {
    final response = await _api.exitRidingRoom(ridingRoomId);

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return left(const RidingFailure.unexpected());
    }
    return right(unit);
  }

  @override
  Future<Either<RidingFailure, RidingRoom>> getRidingRoom(
      int ridingRoomId) async {
    final response = await _api.getRidingRoom(ridingRoomId);

    if (response.statusCode < 200 || response.statusCode >= 300) {
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

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return left(const RidingFailure.unexpected());
    }

    final PageResponseDto<RidingRoom> pageResponse =
    PageResponseDto.fromHttpResponse(response, (jsonObject) {
      return RidingRoomDto.fromJson(jsonObject).toDomain();
    });

    return right(RidingRooms(
      ridingRooms: ListVO(pageResponse.contents),
      count: IntVO(pageResponse.count),
    ));
  }

  @override
  Future<Either<RidingFailure, RidingRoom>> joinRidingRoomName(
      int ridingRoomId) async {
    final response = await _api.joinRidingRoom(ridingRoomId);

    if (response.statusCode < 200 || response.statusCode >= 300) {
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

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return left(const RidingFailure.unexpected());
    }
    final infoJson =
        json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final ridingRoom = RidingRoomDto.fromJson(infoJson);
    return right(ridingRoom.toDomain());
  }
}
