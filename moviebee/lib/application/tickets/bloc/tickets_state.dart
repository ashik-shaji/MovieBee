part of 'tickets_bloc.dart';

@freezed
class TicketsState with _$TicketsState {
  const factory TicketsState.initial() = _Initial;
  const factory TicketsState.loadInProgress() = _LoadInProgress;
  const factory TicketsState.loadSuccess(KtList<MovieTicket> movieTicket) =
      _LoadSuccess;
  const factory TicketsState.loadFailure(MovieFailure movieFailure) =
      _LoadFailure;
}
