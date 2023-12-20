part of 'time_ticket_actor_bloc.dart';

enum UpdateStatus {
  init,
  updatedStartAt,
  updatedEndAt,
}

@freezed
class TimeTicketActorState with _$TimeTicketActorState {
  const factory TimeTicketActorState({
    required DateTime updatedAt,
    required DefaultStatus status,
    required UpdateStatus updateStatus,
    required DateTime? startAt,
    required DateTime? endAt,
    required List<DateTimeTickets> dateTimeTickets,
    required Rental? rental,
    required bool isAdult,
    required bool isValidPeriod,
  }) = _TimeTicketActorState;

  factory TimeTicketActorState.initial() => TimeTicketActorState(
        updatedAt: DateTime.now(),
        status: DefaultStatus.initial,
        updateStatus: UpdateStatus.init,
        startAt: null,
        endAt: null,
        dateTimeTickets: [],
        rental: null,
        isAdult: false,
        isValidPeriod: false,
      );
}
