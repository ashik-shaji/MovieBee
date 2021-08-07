import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviebee/domain/auth/value_objects.dart';
import 'package:moviebee/domain/movie/i_movie_repository.dart';
import 'package:moviebee/domain/movie/movie_failure.dart';

part 'movie_bloc_event.dart';
part 'movie_bloc_state.dart';
part 'movie_bloc_bloc.freezed.dart';

@injectable
class MovieBlocBloc extends Bloc<MovieBlocEvent, MovieBlocState> {
  final IMovieRepository _movieRepository;

  MovieBlocBloc(this._movieRepository) : super();

  @override
  Stream<MovieBlocState> mapEventToState(
    MovieBlocEvent event,
  ) async* {
    yield* event.map(getMovieSeats: (e) async* {
      Either<MovieFailure, String>? seatStr;
      print('what problem');
      seatStr = await _movieRepository.getSeats(e.movieNameStr);

      yield state.copyWith(
        movieSeats: UserName(seatStr.getOrElse(() => 'failed bloc')),
      );
    });
  }

  @override
  MovieBlocState get initialState => MovieBlocState.initial();
}
