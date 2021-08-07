part of 'movie_bloc_bloc.dart';

@freezed
class MovieBlocState with _$MovieBlocState {
  const factory MovieBlocState({
    required UserName? movieSeats,
  }) = _MovieBlocState;
  factory MovieBlocState.initial() => MovieBlocState(
        movieSeats: UserName(''),
      );
}
