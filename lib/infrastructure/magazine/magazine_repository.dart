import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/magazine/i_magazine_repository.dart';
import 'package:doortoout/domain/magazine/magazine.dart';
import 'package:doortoout/domain/magazine/magazines.dart';
import 'package:doortoout/infrastructure/magazine/magazine_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/riding/i_riding_repository.dart';
import 'package:doortoout/domain/riding/riding_failure.dart';
import 'package:doortoout/domain/riding/riding_room.dart';
import 'package:doortoout/domain/riding/riding_rooms.dart';
import 'package:doortoout/infrastructure/api/core_api.dart';
import 'package:doortoout/infrastructure/core/page_response_dtos.dart';
import 'package:doortoout/infrastructure/riding/riding_dtos.dart';

@LazySingleton(as: IMagazineRepository)
class RidingRepository implements IMagazineRepository {
  final CoreApi _api;

  RidingRepository(this._api);

  @override
  Future<Either<RidingFailure, Magazines>> getMagazines({required int start, int? size}) async {
    final response = await _api.getMagazines();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return left(const RidingFailure.unexpected());
    }

    final PageResponseDto<Magazine> pageResponse =
    PageResponseDto.fromHttpResponse(response, (jsonObject) {
      return MagazineDto.fromJson(jsonObject).toDomain();
    });

    return right(Magazines(
      items: ListVO(pageResponse.contents),
      count: IntVO(pageResponse.count),
    ));
  }

  @override
  Future<Either<RidingFailure, Magazine>> getMagazine({required int id}) async {
    final response = await _api.getMagazine(id: id);

    if (response.statusCode < 200 || response.statusCode >= 300) {
      return left(const RidingFailure.unexpected());
    }
    final infoJson =
    json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    final ridingRoom = MagazineDto.fromJson(infoJson);
    return right(ridingRoom.toDomain());
  }
}
