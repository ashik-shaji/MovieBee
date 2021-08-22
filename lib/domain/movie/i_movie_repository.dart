import 'package:dartz/dartz.dart';
import 'package:moviebee/domain/movie/movie_failure.dart';
import 'package:moviebee/domain/movie/movie.dart';
import 'package:kt_dart/kt.dart';

abstract class IMovieRepository {
  Future<Either<MovieFailure, String>> getSeats(String movieName);
  Future<Either<MovieFailure, KtList<MovieTicket>>> watchTickets();
}
