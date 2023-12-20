import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/activity_center/model/time_ticket.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_time_tickets.freezed.dart';

@freezed
class DateTimeTickets with _$DateTimeTickets {
  const DateTimeTickets._();

  const factory DateTimeTickets({
    required DateTimeVO? startAt,
    required DateTimeVO? endAt,
    required ListVO<TimeTicket> timeTickets,
  }) = _DateTimeTickets;

  factory DateTimeTickets.empty() => DateTimeTickets(
        startAt: null,
        endAt: null,
        timeTickets: ListVO<TimeTicket>([]),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return timeTickets.failureOrUnit
        .fold((f) => some(f), (_) => none());
  }
}
