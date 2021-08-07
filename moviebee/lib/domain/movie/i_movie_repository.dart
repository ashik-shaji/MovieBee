import 'package:dartz/dartz.dart';
import 'package:moviebee/domain/movie/movie_failure.dart';

abstract class IMovieRepository {
  Future<Either<MovieFailure, String>> getSeats(String movieName);
}
