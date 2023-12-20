part of 'time_ticket_actor_bloc.dart';

@freezed
class TimeTicketActorEvent with _$TimeTicketActorEvent {
  const factory TimeTicketActorEvent.init({required Rental? rental}) = _Init;

  const factory TimeTicketActorEvent.setStartAt({required DateTime? startAt}) =
      _SetStartAt;

  const factory TimeTicketActorEvent.setEndAt({required DateTime? endAt}) =
      _SetEndAt;

  const factory TimeTicketActorEvent.selectAdultButton() = _SelectAdultButton;

  const factory TimeTicketActorEvent.getTiemTickets() = _GetTiemTickets;
  const factory TimeTicketActorEvent.selectTimeTicket({required TimeTicket timeTicket}) = _SelectTimeTicket;
}
