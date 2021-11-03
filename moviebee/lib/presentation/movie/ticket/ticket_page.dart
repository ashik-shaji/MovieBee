import 'package:flutter/material.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/movie/booking_sections/checkout_movie_page.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ticket_pass_package/ticket_pass.dart';

class TicketPage extends StatelessWidget {
  final String? ticketId;
  final String? movieName;
  final String? movieImage;
  final String? rating;
  final String? stars;
  final String? gerne;
  final String? movieDay;
  final String? movieTime;
  final String? theater;
  final String? seatName;
  const TicketPage({
    Key? key,
    required this.ticketId,
    required this.movieName,
    required this.movieImage,
    required this.rating,
    required this.stars,
    required this.gerne,
    required this.movieDay,
    required this.movieTime,
    required this.theater,
    required this.seatName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: TicketPass(
              height: 350,
              ticketTitle: Text(
                'Ticket Id: $ticketId',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              titleColor: kPrimaryColor,
              expandIcon: const Text(''),
              child: Container(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.asset(
                        movieImage!,
                        height: 160,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      movieName!,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      gerne!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Theater',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(theater!),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Movie Day',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(
                              '$movieDay ${monthsList[DateTime.now().month - 1]}'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Movie Time',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(movieTime!),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Seats',
                            style: TextStyle(color: Colors.black54),
                          ),
                          Text(seatName!),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                context.router.replace(const HomePageRoute());
              },
              child: const Text(
                'Back to Home',
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
