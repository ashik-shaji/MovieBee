import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviebee/domain/auth/i_auth_facade.dart';
import 'package:moviebee/domain/movie/i_movie_repository.dart';
import 'package:moviebee/domain/movie/movie_failure.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final IMovieRepository _movieRepository;
  final IAuthFacade _authFacade;

  BookingBloc(this._movieRepository, this._authFacade) : super();

  @override
  Stream<BookingState> mapEventToState(
    BookingEvent event,
  ) async* {
    yield* event.map(bookingPressed: (e) async* {
      yield const BookingState.loadInProgress();
      final bookingStatus = await _movieRepository.bookingStarted(
        e.moviename,
        e.movieimage,
        e.rating,
        e.stars,
        e.genre,
        e.movieday,
        e.movietime,
        e.theater,
        e.seatname,
      );
      if (bookingStatus == right(unit)) {
        final updateSeatsStatus = await _movieRepository.updateSeats(
            e.updatedSeatsList, e.moviename, e.theater);
        if (updateSeatsStatus == right(unit)) {
          final balanceAmount = await _authFacade.getBalance();
          final balanceAmontInt =
              int.parse(balanceAmount.getOrElse(() => 'failed'));
          final updatedBalance = balanceAmontInt - e.totalAmount;
          final updatedBalanceStr = updatedBalance.toString();
          print('updatedbalancestr: $updatedBalanceStr');
          final balanceStatus =
              await _movieRepository.updateBalance(updatedBalanceStr);

          yield balanceStatus.fold(
            (f) => BookingState.loadFailure(f),
            (r) => const BookingState.loadSuccess(),
          );
        } else {
          print('update seat');
          yield const BookingState.loadFailure(MovieFailure.databaseError());
        }
      } else {
        print('booking failed');
        yield const BookingState.loadFailure(MovieFailure.databaseError());
      }
    });
  }

  @override
  BookingState get initialState => const BookingState.initial();
}
