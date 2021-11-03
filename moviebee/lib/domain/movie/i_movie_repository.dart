import 'package:dartz/dartz.dart';
import 'package:moviebee/domain/core/value_objects.dart';
import 'package:moviebee/domain/movie/movie_failure.dart';
import 'package:moviebee/domain/movie/movie.dart';
import 'package:kt_dart/kt.dart';

abstract class IMovieRepository {
  Future<Either<MovieFailure, String>> getSeats(
      String movieName, String theater);
  Future<Either<MovieFailure, KtList<MovieTicket>>> watchTickets();
  Future<Either<MovieFailure, Unit>> bookingStarted(
    String moviename,
    String movieimage,
    String rating,
    String stars,
    String genre,
    String movieday,
    String movietime,
    String theater,
    String seatname,
  );
  Future<Either<MovieFailure, Unit>> updateSeats(
      String updatedSeatsList, String moviename, String theater);
  Future<Either<MovieFailure, Unit>> updateBalance(String updatedBalance);
}
