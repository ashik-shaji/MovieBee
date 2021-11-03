import 'dart:convert';

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
import 'package:moviebee/infrastructure/core/keys.dart';
import 'package:moviebee/infrastructure/movie/movie_dtos.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

import 'package:kt_dart/kt.dart';

@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  late SharedPreferences sharedPreferencesInstance;
  final ipAddressV6 = '192.168.230.170';
  @override
  Future<Either<MovieFailure, String>> getSeats(
      String movieName, String theater) async {
    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/movieseats.php?moviename=$movieName&theater=$theater';

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
  Future<Either<MovieFailure, KtList<MovieTicket>>> watchTickets() async {
    sharedPreferencesInstance = await SharedPreferences.getInstance();

    final currentUserId = sharedPreferencesInstance.getString(AUTOLOGIN_KEY);
    final personId = currentUserId.toString();
    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/tickets.php?personid=$personId';

    final response =
        await Dio().get(eSelectUrl).catchError((e) => print(e.toString()));
    // final http.Response response = await http.get(Uri.parse(eSelectUrl),
    //     headers: {
    //       'Content-Type': 'application/json;charset=UTF-8',
    //       'Charset': 'utf-8'
    //     });
    final eSelectData = response.data;
    if (eSelectData == 'ERROR: Could not able to execute' ||
        eSelectData == 'ERROR: Could not connect') {
      return left(const MovieFailure.databaseError());
    } else if (eSelectData == 'No records found') {
      List<dynamic> listOfTickets = [];
      final movieTicketList = listOfTickets
          .map((ticket) =>
              MovieTicketDto.fromJson(ticket as Map<String, dynamic>)
                  .toDomain())
          .toImmutableList();

      print('movieticket for empty list:');
      return right(movieTicketList);
    } else {
      dynamic jsonData0;
      try {
        jsonData0 = json.decode(eSelectData as String);
      } catch (e) {
        print(e);
      }
      List<dynamic> listOfTickets =
          jsonData0["list_of_tickets"] as List<dynamic>;

      final movieTicketList = listOfTickets
          .map((ticket) =>
              MovieTicketDto.fromJson(ticket as Map<String, dynamic>)
                  .toDomain())
          .toImmutableList();

      print(movieTicketList.toString());
      return right(movieTicketList);
    }
  }

  @override
  Future<Either<MovieFailure, Unit>> bookingStarted(
    String moviename,
    String movieimage,
    String rating,
    String stars,
    String genre,
    String movieday,
    String movietime,
    String theater,
    String seatname,
  ) async {
    sharedPreferencesInstance = await SharedPreferences.getInstance();

    final currentUserId = sharedPreferencesInstance.getString(AUTOLOGIN_KEY);
    final personid = currentUserId.toString();
    print('person id id: $personid');
    final rInsertUrl =
        'https://$ipAddressV6/phpprodemo/bookingmovie.php?moviename=$moviename&movieimage=$movieimage&rating=$rating&stars=$stars&genre=$genre&movieday=$movieday&movietime=$movietime&theater=$theater&seatname=$seatname&personid=$personid';
    final http.Response response = await http.get(Uri.parse(rInsertUrl));
    final rInsertData = response.body.toString();
    print('response: $rInsertData');
    if (rInsertData == 'Record inserted successfully') {
      return right(unit);
    } else {
      return left(const MovieFailure.databaseError());
    }
  }

  @override
  Future<Either<MovieFailure, Unit>> updateSeats(
      String updatedSeatsList, String moviename, String theater) async {
    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/updateseats.php?moviename=$moviename&theater=$theater&movieseatslist=$updatedSeatsList';

    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    print('response 2: $eSelectData');
    if (eSelectData == 'Record updated successfully') {
      return right(unit);
    } else {
      return left(const MovieFailure.databaseError());
    }
  }

  @override
  Future<Either<MovieFailure, Unit>> updateBalance(
      String updatedBalance) async {
    sharedPreferencesInstance = await SharedPreferences.getInstance();

    final currentUserId = sharedPreferencesInstance.getString(AUTOLOGIN_KEY);
    final id = currentUserId.toString();
    print('repository balance: $updatedBalance');
    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/updatebalance2.php?id=$id&balance=$updatedBalance';

    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    print('response 3: $eSelectData');
    if (eSelectData == 'Balance updated successfully') {
      print('happy status');
      return right(unit);
    } else {
      return left(const MovieFailure.databaseError());
    }
  }
}
