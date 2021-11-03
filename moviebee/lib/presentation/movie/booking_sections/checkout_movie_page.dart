import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/application/tickets/bloc/tickets_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/movie/booking_result_section/booking_result_page.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

List monthsList = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec'
];

class CheckoutMoviePage extends StatelessWidget {
  final String movieName;
  final String movieImage;
  final String rating;
  final String stars;
  final String gerne;
  final String movieDay;
  final String movieTime;
  final String theater;
  final String seatName;
  final int seatCount;
  final String updatedSeatsList;

  const CheckoutMoviePage(
      {Key? key,
      required this.movieName,
      required this.movieImage,
      required this.rating,
      required this.stars,
      required this.gerne,
      required this.movieDay,
      required this.movieTime,
      required this.theater,
      required this.seatName,
      required this.seatCount,
      required this.updatedSeatsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<TicketsBloc>(),
        child: Scaffold(
            body: SafeArea(
          child: Container(
            color: kPrimaryColor.withAlpha(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Checkout \n   Movie",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          movieImage,
                          fit: BoxFit.cover,
                          height: 110,
                          width: 90,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movieName,
                            style: const TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            gerne,
                            style: TextStyle(
                              fontSize: 15,
                              color: kPrimaryColor.withAlpha(100),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              starsAndRating(stars),
                              Text(
                                '\t\t\t$rating/5.0',
                                style: TextStyle(
                                  color: kPrimaryColor.withAlpha(100),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Theatre',
                        style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor.withAlpha(100),
                        ),
                      ),
                      Text(
                        theater,
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date & Time',
                        style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor.withAlpha(100),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '$movieDay ${monthsList[DateTime.now().month - 1]}, ',
                            style: const TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            movieTime,
                            style: const TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Seat Numbers',
                        style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor.withAlpha(100),
                        ),
                      ),
                      Text(
                        seatName,
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor.withAlpha(100),
                        ),
                      ),
                      Text(
                        'Rs 120 x $seatCount',
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 15,
                          color: kPrimaryColor.withAlpha(100),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Rs ${120 * seatCount}',
                        style: const TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Divider(
                    thickness: 1.5,
                  ),
                ),
                const SizedBox(height: 20),
                MovieSeat(
                  seatCount: seatCount,
                  movieName: movieName,
                  movieImage: movieImage,
                  rating: rating,
                  stars: stars,
                  gerne: gerne,
                  movieDay: movieDay,
                  movieTime: movieTime,
                  theater: theater,
                  seatName: seatName,
                  updatedSeatsList: updatedSeatsList,
                ),
              ],
            ),
          ),
        )));
  }
}

Widget starsAndRating(String count) {
  if (count == '2.5') {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star_half, color: Colors.yellow),
        Icon(Icons.star_border, color: Colors.yellow),
        Icon(Icons.star_border, color: Colors.yellow),
      ],
    );
  } else if (count == '3') {
    return Row(
      children: const [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star_border, color: Colors.yellow),
        Icon(Icons.star_border, color: Colors.yellow),
      ],
    );
  } else if (count == '3.5') {
    return Row(
      children: const [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star_half, color: Colors.yellow),
        Icon(Icons.star_border, color: Colors.yellow),
      ],
    );
  } else if (count == '4') {
    return Row(
      children: const [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star_border, color: Colors.yellow),
      ],
    );
  } else if (count == '4.5') {
    return Row(
      children: const [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star_half, color: Colors.yellow),
      ],
    );
  }

  return Row(
    children: const [
      Icon(Icons.star, color: Colors.yellow),
      Icon(Icons.star, color: Colors.yellow),
      Icon(Icons.star, color: Colors.yellow),
      Icon(Icons.star, color: Colors.yellow),
      Icon(Icons.star, color: Colors.yellow),
    ],
  );
}

class MovieSeat extends StatelessWidget {
  final String movieName;
  final String movieImage;
  final String rating;
  final String stars;
  final String gerne;
  final String movieDay;
  final String movieTime;
  final String theater;
  final String seatName;
  final String updatedSeatsList;
  final int seatCount;
  const MovieSeat({
    Key? key,
    required this.seatCount,
    required this.movieName,
    required this.movieImage,
    required this.rating,
    required this.stars,
    required this.gerne,
    required this.movieDay,
    required this.movieTime,
    required this.theater,
    required this.seatName,
    required this.updatedSeatsList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<SigninFormBloc>()
          ..add(const SigninFormEvent.getBalanceEvent()),
        child: BlocConsumer<SigninFormBloc, SigninFormState>(
          listener: (context, state) {},
          builder: (context, state) {
            final totalAmount = 120 * seatCount;
            final balanceStr = state.balance!;
            final balance = int.parse(balanceStr);
            if (balance > totalAmount) {
              return Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    fixedSize: const Size(230, 50),
                  ),
                  onPressed: () {
                    context.router.replace(
                      BookingResultPageRoute(
                        movieName: movieName,
                        movieImage: movieImage,
                        rating: rating,
                        stars: stars,
                        gerne: gerne,
                        movieDay: movieDay,
                        movieTime: movieTime,
                        theater: theater,
                        seatName: seatName,
                        updatedSeatsList: updatedSeatsList,
                        totalAmount: totalAmount,
                      ),
                    );
                    /*context.bloc<TicketsBloc>().add(
                          const TicketsEvent.ticketDisplayStarted(),
                        );*/
                  },
                  child: const Center(
                    child: Text(
                      'Checkout Now',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    fixedSize: const Size(230, 50),
                  ),
                  onPressed: () {
                    context.router
                        .push(TopUpWalletPageRoute(balance: state.balance));
                  },
                  child: const Center(
                    child: Text(
                      'Top Up My Wallet',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              );
            }
          },
        ));
  }
}
