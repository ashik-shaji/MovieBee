import 'package:auto_route/auto_route.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moviebee/application/movie/bloc/movie_bloc_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

List<String> personMovieList = [];
String seatListFinal = '';

class SeatSelectionPage extends StatelessWidget {
  final String movieName;
  final String movieImage;
  final String rating;
  final String stars;
  final String gerne;
  final String movieDay;
  final String movieTime;
  final String theater;

  const SeatSelectionPage({
    Key? key,
    required this.movieName,
    required this.movieImage,
    required this.rating,
    required this.stars,
    required this.gerne,
    required this.movieDay,
    required this.movieTime,
    required this.theater,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        personMovieList = [];
        seatListFinal = '';
        return true;
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: IconButton(
                onPressed: () {
                  personMovieList = [];
                  seatListFinal = '';
                  context.router.pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                'Select Seats',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                children: [
                  MovieSeat(
                      seatNo: 'A1', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'A2', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'A3', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'A4', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'A5', movieName: movieName, theater: theater),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                children: [
                  MovieSeat(
                      seatNo: 'B1', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'B2', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'B3', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'B4', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'B5', movieName: movieName, theater: theater),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                children: [
                  MovieSeat(
                      seatNo: 'C1', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'C2', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'C3', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'C4', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'C5', movieName: movieName, theater: theater),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                children: [
                  MovieSeat(
                      seatNo: 'D1', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'D2', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'D3', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'D4', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'D5', movieName: movieName, theater: theater),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                children: [
                  MovieSeat(
                      seatNo: 'E1', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'E2', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'E3', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'E4', movieName: movieName, theater: theater),
                  MovieSeat(
                      seatNo: 'E5', movieName: movieName, theater: theater),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: kPrimaryColor,
                  fixedSize: const Size(60, 60),
                ),
                onPressed: () {
                  if (personMovieList.isEmpty) {
                    showFlash(
                        context: context,
                        duration: const Duration(seconds: 4),
                        builder: (context, controller) {
                          return Flash.bar(
                            controller: controller,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Container(
                                height: 35,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    const Icon(Icons.dangerous,
                                        color: kPrimaryColor),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Choose atleast one seat',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  } else {
                    final personMovieCount = personMovieList.length;
                    final personMovieStr = personMovieList.toString();
                    final personMovieStrLen = personMovieStr.length;
                    final personMovieStrFinal =
                        personMovieStr.substring(1, personMovieStrLen - 1);

                    final seatListFinal2 = seatListFinal + personMovieStrFinal;

                    context.router.push(
                      CheckoutMoviePageRoute(
                          movieName: movieName,
                          movieImage: movieImage,
                          rating: rating,
                          stars: stars,
                          gerne: gerne,
                          movieDay: movieDay,
                          movieTime: movieTime,
                          theater: theater,
                          seatName: personMovieStrFinal,
                          seatCount: personMovieCount,
                          updatedSeatsList: seatListFinal2),
                    );
                  }
                },
                child: const Icon(
                  Icons.arrow_forward,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MovieSeat extends StatelessWidget {
  final String seatNo;
  final String movieName;
  final String theater;

  const MovieSeat(
      {Key? key,
      required this.seatNo,
      required this.movieName,
      required this.theater})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<MovieBlocBloc>()
          ..add(MovieBlocEvent.getMovieSeats(movieName, theater)),
        child: BlocConsumer<MovieBlocBloc, MovieBlocState>(
          listener: (context, state) {},
          builder: (context, state) {
            final seatlist =
                state.movieSeats!.value.getOrElse(() => 'failed value temp');
            seatListFinal = seatlist;
            print(seatlist);
            if (seatlist.contains(seatNo)) {
              return Expanded(
                child: AbsorbPointer(
                  child: CustomCheckBoxGroup(
                    horizontal: true,
                    height: 55,
                    width: 60,
                    buttonValuesList: [
                      seatNo,
                    ],
                    buttonLables: [seatNo],
                    checkBoxButtonValues: (value) {},
                    selectedColor: kPrimaryColor,
                    unSelectedColor: Colors.grey.shade600,
                    unSelectedBorderColor: Colors.grey.shade600,
                  ),
                ),
              );
            } else {
              return Expanded(
                child: CustomCheckBoxGroup(
                  horizontal: true,
                  height: 55,
                  width: 60,
                  buttonValuesList: [
                    seatNo,
                  ],
                  buttonLables: [seatNo],
                  checkBoxButtonValues: (value) {
                    if (value.isEmpty) {
                      personMovieList.remove(seatNo);
                    } else {
                      personMovieList.add(seatNo);
                    }
                  },
                  selectedColor: kPrimaryColor,
                  selectedBorderColor: kPrimaryColor,
                  unSelectedColor: kPrimaryColor.withAlpha(50),
                  unSelectedBorderColor: kPrimaryColor.withAlpha(50),
                ),
              );
            }
          },
        ));
  }
}
