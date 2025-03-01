import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/magazine/magazine.dart';
import 'package:doortoout/domain/magazine/magazines.dart';
import 'package:doortoout/domain/riding/riding_failure.dart';
import 'package:doortoout/domain/riding/riding_room.dart';
import 'package:doortoout/domain/riding/riding_rooms.dart';

abstract class IMagazineRepository {
  Future<Either<RidingFailure, Magazines>> getMagazines(
      {required int start, int? size});

  Future<Either<RidingFailure, Magazine>> getMagazine({required int id});
}
