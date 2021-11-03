part of 'tickets_bloc.dart';

@freezed
class TicketsEvent with _$TicketsEvent {
  const factory TicketsEvent.ticketDisplayStarted() = _TicketDisplayStarted;
}
