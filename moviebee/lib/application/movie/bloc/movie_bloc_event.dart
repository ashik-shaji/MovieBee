part of 'movie_bloc_bloc.dart';

@freezed
class MovieBlocEvent with _$MovieBlocEvent {
  const factory MovieBlocEvent.getMovieSeats(String movieNameStr) =
      GetMovieSeats;
}
