import 'package:dartz/dartz.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:moviebee/domain/movie/i_movie_repository.dart';
import 'package:moviebee/domain/movie/movie.dart';
import 'package:moviebee/domain/movie/movie_failure.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final ipAddressV6 = '192.168.181.170';
  @override
  Future<Either<MovieFailure, String>> getSeats(String movieName) async {
    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/movieseats.php?moviename=$movieName';
    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    print('almost');
    if (eSelectData == 'No records found' ||
        eSelectData == 'ERROR: Could not able to execute' ||
        eSelectData == 'ERROR: Could not connect') {
      print('sad aayi');
      return left(const MovieFailure.databaseError());
    } else {
      print('happy');
      return right(eSelectData);
    }
  }

  @override
  Future<Either<MovieFailure, KtList<MovieTicket>>> watchTickets() {
    // TODO: implement watchTickets
    throw UnimplementedError();
  }
}
