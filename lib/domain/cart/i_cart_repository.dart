import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/cart/cart_failure.dart';
import 'package:doortoout/domain/cart/model/cart.dart';

abstract class ICartRepository {
  Future<Either<CartFailure, Cart>> getCart();
}
