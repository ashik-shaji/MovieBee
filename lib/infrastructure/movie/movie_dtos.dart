import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviebee/domain/core/value_objects.dart';
import 'package:moviebee/domain/movie/movie.dart';

part 'movie_dtos.freezed.dart';

part 'movie_dtos.g.dart';

@freezed
abstract class MovieTicketDto implements _$MovieTicketDto {
  const MovieTicketDto._();

  // ignore: sort_unnamed_constructors_first
  const factory MovieTicketDto({
    @required String? id,
    @required String? movieName,
    @required String? movieImage,
    @required String? rating,
    @required String? stars,
    @required String? gerne,
    @required String? movieDay,
    @required String? movieTime,
    @required String? theater,
    @required String? seatName,
    @required String? personId,
  }) = _MovieTicketDto;

  factory MovieTicketDto.fromDomain(MovieTicket movieTicket) {
    return MovieTicketDto(
      id: movieTicket.id!.getOrCrash(),
      movieName: movieTicket.movieName,
      movieImage: movieTicket.movieImage,
      rating: movieTicket.rating,
      stars: movieTicket.stars,
      gerne: movieTicket.gerne,
      movieDay: movieTicket.movieDay,
      movieTime: movieTicket.movieTime,
      theater: movieTicket.theater,
      seatName: movieTicket.seatName,
      personId: movieTicket.personId,
    );
  }

  MovieTicket toDomain() {
    return MovieTicket(
      id: UniqueId.fromUniqueString(id!),
      movieName: movieName,
      movieImage: movieImage,
      rating: rating,
      stars: stars,
      gerne: gerne,
      movieDay: movieDay,
      movieTime: movieTime,
      theater: theater,
      seatName: seatName,
      personId: personId,
    );
  }

  factory MovieTicketDto.fromJson(Map<String, String> json) =>
      _$MovieTicketDtoFromJson(json);
}
