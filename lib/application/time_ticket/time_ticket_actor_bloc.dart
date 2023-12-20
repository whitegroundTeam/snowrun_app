import 'package:bloc/bloc.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/domain/activity_center/model/date_time_tickets.dart';
import 'package:snowrun_app/domain/activity_center/model/time_ticket.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/rental/model/rental.dart';
import 'package:snowrun_app/domain/rental_shop/i_rental_shop_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'time_ticket_actor_event.dart';

part 'time_ticket_actor_state.dart';

part 'time_ticket_actor_bloc.freezed.dart';

@injectable
class TimeTicketActorBloc
    extends Bloc<TimeTicketActorEvent, TimeTicketActorState> {
  final IRentalShopRepository repository;

  TimeTicketActorBloc(this.repository) : super(TimeTicketActorState.initial()) {
    on<_Init>((event, emit) async {
      emit(state.copyWith(updatedAt: DateTime.now(), rental: event.rental));
    });

    on<_SelectAdultButton>((event, emit) async {
      emit(state.copyWith(
          status: DefaultStatus.progress, isAdult: !state.isAdult));
    });

    on<_GetTiemTickets>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final startAt = state.startAt;
      final endAt = state.endAt;
      if (startAt != null && endAt != null) {
        final failureOrResponse =
            await repository.getTimeTickets(startAt: startAt, endAt: endAt);
        emit(
          failureOrResponse.fold(
            (f) => state.copyWith(status: DefaultStatus.failure),
            (dateTimeTickets) {
              final updatedDateTimeTicketsList =
                  dateTimeTickets.map((dateTimeTicket) {
                // Ensure there are timeTickets to select from
                if (dateTimeTicket.timeTickets.value.isRight()) {
                  final timeTickets = dateTimeTicket.timeTickets.getOrCrash();

                  // Update the first TimeTicket to set isSelected to true, if available
                  if (timeTickets.isNotEmpty) {
                    final updatedFirstTicket =
                        timeTickets.first.copyWith(isSelected: true);
                    List<TimeTicket> updatedTimeTickets = [
                      updatedFirstTicket,
                      ...timeTickets.sublist(1),
                    ];

                    return dateTimeTicket.copyWith(
                      timeTickets: ListVO(updatedTimeTickets),
                    );
                  }
                }
                return dateTimeTicket;
              }).toList();

              return state.copyWith(
                status: DefaultStatus.success,
                updateStatus: UpdateStatus.init,
                dateTimeTickets:
                    updatedDateTimeTicketsList, // Emit updated list
              );
            },
          ),
        );
      }
    });

    on<_SelectTimeTicket>((event, emit) async {
      final updatedDateTimeTicketsList =
          state.dateTimeTickets.map((dateTimeTicket) {
        final timeTickets = dateTimeTicket.timeTickets.getOrCrash();
        final updatedTimeTickets = timeTickets.map((timeTicket) {
          if (timeTicket.id.getOrCrash() == event.timeTicket.id.getOrCrash()) {
            return timeTicket.copyWith(
                isSelected: !(timeTicket.isSelected ?? false));
          }
          return timeTicket;
        }).toList();
        return dateTimeTicket.copyWith(
          timeTickets: ListVO(updatedTimeTickets),
        );
      }).toList();
      emit(state.copyWith(updatedAt: DateTime.now(), dateTimeTickets: updatedDateTimeTicketsList));
    });

    on<_SetStartAt>((event, emit) async {
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.progress,
        startAt: event.startAt,
        updateStatus: UpdateStatus.updatedStartAt,
        isValidPeriod: isValidPeriod(event.startAt, state.endAt),
      ));
    });

    on<_SetEndAt>((event, emit) async {
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.progress,
        endAt: event.endAt,
        updateStatus: UpdateStatus.updatedEndAt,
        isValidPeriod: isValidPeriod(state.startAt, event.endAt),
      ));
    });
  }

  bool isValidPeriod(DateTime? startAt, DateTime? endAt) {
    return startAt != null && endAt != null && endAt.compareTo(startAt) > 0;
  }
}
