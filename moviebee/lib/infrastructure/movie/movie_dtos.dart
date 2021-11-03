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
    @required String? ticketid,
    @required String? moviename,
    @required String? movieimage,
    @required String? rating,
    @required String? stars,
    @required String? gerne,
    @required String? movieday,
    @required String? movietime,
    @required String? theater,
    @required String? seatname,
    @required String? personid,
  }) = _MovieTicketDto;

  factory MovieTicketDto.fromDomain(MovieTicket movieTicket) {
    return MovieTicketDto(
      ticketid: movieTicket.id!.getOrCrash(),
      moviename: movieTicket.movieName,
      movieimage: movieTicket.movieImage,
      rating: movieTicket.rating,
      stars: movieTicket.stars,
      gerne: movieTicket.gerne,
      movieday: movieTicket.movieDay,
      movietime: movieTicket.movieTime,
      theater: movieTicket.theater,
      seatname: movieTicket.seatName,
      personid: movieTicket.personId,
    );
  }

  MovieTicket toDomain() {
    return MovieTicket(
      id: UniqueId.fromUniqueString(ticketid!),
      movieName: moviename,
      movieImage: movieimage,
      rating: rating,
      stars: stars,
      gerne: gerne,
      movieDay: movieday,
      movieTime: movietime,
      theater: theater,
      seatName: seatname,
      personId: personid,
    );
  }

  factory MovieTicketDto.fromJson(Map<String, dynamic> json) =>
      _$MovieTicketDtoFromJson(json);
}
