// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieTicketDto _$_$_MovieTicketDtoFromJson(Map<String, dynamic> json) {
  return _$_MovieTicketDto(
    id: json['id'] as String?,
    movieName: json['movieName'] as String?,
    movieImage: json['movieImage'] as String?,
    rating: json['rating'] as String?,
    stars: json['stars'] as String?,
    gerne: json['gerne'] as String?,
    movieDay: json['movieDay'] as String?,
    movieTime: json['movieTime'] as String?,
    theater: json['theater'] as String?,
    seatName: json['seatName'] as String?,
    personId: json['personId'] as String?,
  );
}

Map<String, dynamic> _$_$_MovieTicketDtoToJson(_$_MovieTicketDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movieName': instance.movieName,
      'movieImage': instance.movieImage,
      'rating': instance.rating,
      'stars': instance.stars,
      'gerne': instance.gerne,
      'movieDay': instance.movieDay,
      'movieTime': instance.movieTime,
      'theater': instance.theater,
      'seatName': instance.seatName,
      'personId': instance.personId,
    };
