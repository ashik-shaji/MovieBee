import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

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
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "Checkout \n   Movie",
              style: TextStyle(
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
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      gerne,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        starsAndRating(stars),
                        Text(
                          '\t\t\t$rating/5.0',
                          style: const TextStyle(
                            color: Colors.white,
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
                const Text(
                  'Theatre',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  theater,
                  style: const TextStyle(
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
                const Text(
                  'Date & Time',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '$movieDay ${monthsList[DateTime.now().month - 1]}, ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      movieTime,
                      style: const TextStyle(
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
                const Text(
                  'Seat Numbers',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  seatName,
                  style: const TextStyle(
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
                const Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  'Rs 120 x $seatCount',
                  style: const TextStyle(
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
                const Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rs ${120 * seatCount}',
                  style: const TextStyle(
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
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                fixedSize: const Size(230, 50),
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                  'Checkout Now',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
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
