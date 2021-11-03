import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviebee/application/booking/bloc/booking_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/movie/home/home_page.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class BookingResultPage extends StatelessWidget {
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
  final int totalAmount;
  const BookingResultPage({
    Key? key,
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
    required this.totalAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<BookingBloc>()
          ..add(BookingEvent.bookingPressed(
              movieName,
              movieImage,
              rating,
              stars,
              gerne,
              movieDay,
              movieTime,
              theater,
              seatName,
              updatedSeatsList,
              totalAmount)),
        child: BlocBuilder<BookingBloc, BookingState>(
          builder: (context, state) {
            return state.maybeMap(
              loadInProgress: (e) {
                return loadingIndicator();
              },
              loadSuccess: (e) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 320,
                    ),
                    Center(
                      child: Text(
                        "                   Happy watching!\nYou have successfully bought the Ticket",
                        style: GoogleFonts.pacifico(
                          fontSize: 18,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: kPrimaryColor,
                          fixedSize: const Size(230, 50),
                        ),
                        onPressed: () {
                          context.router
                              .replace(const TicketDisplayPageRoute());
                        },
                        child: const Center(
                          child: Text(
                            'My Tickets',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Discover New Movies?'),
                        TextButton(
                          onPressed: () {
                            context.router.replace(const HomePageRoute());
                          },
                          child: const Text(
                            'Back to Home',
                            style: TextStyle(color: kPrimaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
              loadFailure: (e) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 320,
                    ),
                    Center(
                      child: Text(
                        "Booking Failed!\nCan't bought the Ticket",
                        style: GoogleFonts.pacifico(
                          fontSize: 18,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: kPrimaryColor,
                          fixedSize: const Size(230, 50),
                        ),
                        onPressed: () {
                          context.router.replace(const HomePageRoute());
                        },
                        child: const Center(
                          child: Text(
                            'Back to Home',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              orElse: () {
                return loadingIndicator();
              },
            );
          },
        ),
      ),
    );
  }
}

Center loadingIndicator() {
  return const Center(
      child: CircularProgressIndicator(
    color: kPrimaryColor,
  ));
}
