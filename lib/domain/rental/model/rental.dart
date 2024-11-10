import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/activity_center/model/date_time_tickets.dart';
import 'package:doortoout/domain/activity_center/model/time_ticket.dart';
import 'package:doortoout/domain/body_spec/model/age.dart';
import 'package:doortoout/domain/body_spec/model/body_spec.dart';
import 'package:doortoout/domain/contact/model/contact.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental/model/rental_return_type.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option.dart';
import 'package:doortoout/domain/user/model/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'rental.freezed.dart';

@freezed
class Rental with _$Rental {
  const Rental._();

  const factory Rental({
    required String id,
    required StringVO name,
    required Contact? contact,
    required Gender? gender,
    required Age? age,
    required BodySpec? bodySpec,
    required DateTime? startAt,
    required DateTime? endAt,
    required RentalReturnType returnType,
    required RentalShopProduct mainEquipmentsRentalProduct,
    required RentalShopProduct apparelEquipmentsRentalProduct,
    required RentalShopProduct accessoryEquipmentsRentalProduct,
    required List<DateTimeTickets>? dateTimeTickets,
  }) = _Rental;

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }

  factory Rental.empty() => Rental(
        id: const Uuid().v4(),
        name: StringVO(""),
        contact: null,
        gender: Gender.male,
        age: Age.adult,
        bodySpec: null,
        startAt: null,
        endAt: null,
        returnType: RentalReturnType.rentalShop,
        mainEquipmentsRentalProduct: RentalShopProduct.empty(),
        apparelEquipmentsRentalProduct: RentalShopProduct.empty(),
        accessoryEquipmentsRentalProduct: RentalShopProduct.empty(),
        dateTimeTickets: null,
      );
}
