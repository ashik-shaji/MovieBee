import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:moviebee/domain/movie/i_movie_repository.dart';
import 'package:moviebee/domain/movie/movie.dart';
import 'package:moviebee/domain/movie/movie_failure.dart';

part 'tickets_event.dart';
part 'tickets_state.dart';
part 'tickets_bloc.freezed.dart';

@injectable
class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  final IMovieRepository _movieRepository;

  TicketsBloc(this._movieRepository) : super();

  @override
  Stream<TicketsState> mapEventToState(
    TicketsEvent event,
  ) async* {
    yield* event.map(ticketDisplayStarted: (e) async* {
      yield const TicketsState.loadInProgress();
      final tickets = await _movieRepository.watchTickets();
      yield tickets.fold((f) => TicketsState.loadFailure(f),
          (list) => TicketsState.loadSuccess(list));
    });
  }

  @override
  TicketsState get initialState => const TicketsState.initial();
}
