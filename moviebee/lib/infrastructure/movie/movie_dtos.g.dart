// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieTicketDto _$_$_MovieTicketDtoFromJson(Map<String, dynamic> json) {
  return _$_MovieTicketDto(
    ticketid: json['ticketid'] as String?,
    moviename: json['moviename'] as String?,
    movieimage: json['movieimage'] as String?,
    rating: json['rating'] as String?,
    stars: json['stars'] as String?,
    gerne: json['gerne'] as String?,
    movieday: json['movieday'] as String?,
    movietime: json['movietime'] as String?,
    theater: json['theater'] as String?,
    seatname: json['seatname'] as String?,
    personid: json['personid'] as String?,
  );
}

Map<String, dynamic> _$_$_MovieTicketDtoToJson(_$_MovieTicketDto instance) =>
    <String, dynamic>{
      'ticketid': instance.ticketid,
      'moviename': instance.moviename,
      'movieimage': instance.movieimage,
      'rating': instance.rating,
      'stars': instance.stars,
      'gerne': instance.gerne,
      'movieday': instance.movieday,
      'movietime': instance.movietime,
      'theater': instance.theater,
      'seatname': instance.seatname,
      'personid': instance.personid,
    };
