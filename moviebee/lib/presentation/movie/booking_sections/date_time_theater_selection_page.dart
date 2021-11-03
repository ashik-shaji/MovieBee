import 'package:auto_route/auto_route.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class DateTimeTheaterSelectionPage extends StatelessWidget {
  const DateTimeTheaterSelectionPage({
    Key? key,
    required this.movieName,
    required this.movieImage,
    required this.rating,
    required this.stars,
    required this.gerne,
  }) : super(key: key);

  final String movieName;
  final String movieImage;
  final String rating;
  final String stars;
  final String gerne;

  @override
  Widget build(BuildContext context) {
    final movieDay = DateTime.now();
    final day1 = movieDay.add(const Duration(days: 1)).day;
    final day2 = movieDay.add(const Duration(days: 2)).day;
    final day3 = movieDay.add(const Duration(days: 3)).day;
    final day4 = movieDay.add(const Duration(days: 4)).day;
    final day5 = movieDay.add(const Duration(days: 5)).day;
    final day6 = movieDay.add(const Duration(days: 6)).day;

    String movieDaySelected = (day1).toString();
    String movieTime = '10:00';
    String theater = 'Majestic Theatre';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: kPrimaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Choose Date',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  CustomRadioButton(
                    defaultSelected: (day1).toString(),
                    elevation: 0,
                    height: 100,
                    width: 80,
                    unSelectedBorderColor: kPrimaryColor.withAlpha(50),
                    selectedBorderColor: kPrimaryColor,
                    enableShape: true,
                    buttonLables: [
                      (day1).toString(),
                      (day2).toString(),
                      (day3).toString(),
                      (day4).toString(),
                      (day5).toString(),
                      (day6).toString(),
                    ],
                    buttonValues: [
                      (day1).toString(),
                      (day2).toString(),
                      (day3).toString(),
                      (day4).toString(),
                      (day5).toString(),
                      (day6).toString(),
                    ],
                    buttonTextStyle: const ButtonTextStyle(
                        unSelectedColor: kPrimaryColor,
                        selectedColor: kPrimaryColor,
                        textStyle: TextStyle(
                          fontSize: 18,
                        )),
                    radioButtonValue: (value) {
                      movieDaySelected = value.toString();
                      print(movieDaySelected);
                    },
                    horizontal: false,
                    unSelectedColor: Colors.transparent,
                    selectedColor: Colors.transparent,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Choose Time',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  CustomRadioButton(
                    defaultSelected: '10:00',
                    elevation: 0,
                    height: 70,
                    width: 200,
                    unSelectedBorderColor: kPrimaryColor.withAlpha(50),
                    selectedBorderColor: kPrimaryColor,
                    enableShape: true,
                    buttonLables: [
                      '10:00',
                      '12:00',
                      '03:00',
                      '07:00',
                      '09:00',
                    ],
                    buttonValues: [
                      '10:00',
                      '12:00',
                      '03:00',
                      '07:00',
                      '09:00',
                    ],
                    buttonTextStyle: const ButtonTextStyle(
                        unSelectedColor: kPrimaryColor,
                        selectedColor: kPrimaryColor,
                        textStyle: TextStyle(
                          fontSize: 18,
                        )),
                    radioButtonValue: (value) {
                      movieTime = value.toString();
                      print(movieTime);
                    },
                    horizontal: false,
                    unSelectedColor: Colors.transparent,
                    selectedColor: Colors.transparent,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Choose Theater',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  CustomRadioButton(
                    defaultSelected: 'Majestic Theatre',
                    elevation: 0,
                    height: 70,
                    width: 200,
                    unSelectedBorderColor: kPrimaryColor.withAlpha(50),
                    selectedBorderColor: kPrimaryColor,
                    enableShape: true,
                    buttonLables: [
                      'Majestic Theatre',
                      'Angelika Film Center',
                      'Regal Cinemas',
                      'New Plaza Cinema',
                    ],
                    buttonValues: [
                      'Majestic Theatre',
                      'Angelika Film Center',
                      'Regal Cinemas',
                      'New Plaza Cinema',
                    ],
                    buttonTextStyle: const ButtonTextStyle(
                        unSelectedColor: kPrimaryColor,
                        selectedColor: kPrimaryColor,
                        textStyle: TextStyle(
                          fontSize: 18,
                        )),
                    radioButtonValue: (value) {
                      theater = value.toString();
                    },
                    horizontal: true,
                    unSelectedColor: Colors.transparent,
                    selectedColor: Colors.transparent,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        primary: kPrimaryColor,
                        fixedSize: const Size(60, 60),
                      ),
                      onPressed: () {
                        context.router.push(SeatSelectionPageRoute(
                          movieName: movieName,
                          movieImage: movieImage,
                          rating: rating,
                          stars: stars,
                          gerne: gerne,
                          movieDay: movieDaySelected,
                          movieTime: movieTime,
                          theater: theater,
                        ));
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
