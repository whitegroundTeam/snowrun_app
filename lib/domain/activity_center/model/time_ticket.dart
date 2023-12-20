import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/rental/model/price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_ticket.freezed.dart';

@freezed
class TimeTicket with _$TimeTicket {
  const TimeTicket._();

  const factory TimeTicket({
    required DoubleVO id,
    required StringVO name,
    required Price price,
    bool? isSelected,
  }) = _TimeTicket;

  factory TimeTicket.empty() => TimeTicket(
        id: DoubleVO(-1),
        name: StringVO(""),
        price: Price.empty(),
        isSelected: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(name.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
