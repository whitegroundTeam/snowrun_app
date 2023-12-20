import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/activity_center/model/date_time_tickets.dart';
import 'package:snowrun_app/domain/rental_shop/model/rental_shop.dart';
import 'package:snowrun_app/domain/rental_shop/rental_shop_failure.dart';

abstract class IRentalShopRepository {
  Future<Either<RentalShopFailure, RentalShop>> getRentalShop(String rentalShopAccessCode);
  Future<Either<RentalShopFailure, List<DateTimeTickets>>> getTimeTickets({required DateTime startAt, required DateTime endAt});
}
