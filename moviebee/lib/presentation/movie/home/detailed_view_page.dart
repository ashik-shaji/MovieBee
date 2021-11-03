import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/movie/booking_sections/date_time_theater_selection_page.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class DetailedViewPage extends StatelessWidget {
  const DetailedViewPage({
    required this.movieName,
    required this.movieImage,
    required this.rating,
    required this.stars,
    required this.gerne,
    required this.storyLine,
    required this.person1,
    required this.person1Image,
    required this.person2,
    required this.person2Image,
    required this.person3,
    required this.person3Image,
    required this.person4,
    required this.person4Image,
  });
  final String movieName;
  final String movieImage;
  final String rating;
  final String stars;
  final String gerne;
  final String storyLine;
  final String person1;
  final String person1Image;
  final String person2;
  final String person2Image;
  final String person3;
  final String person3Image;
  final String person4;
  final String person4Image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor.withAlpha(50),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      movieImage,
                      fit: BoxFit.cover,
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 05,
                  child: IconButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                )
              ],
            ),
            Center(
              child: Text(
                movieName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                gerne,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              starsAndRating(stars),
              Text(
                '\t\t\t$rating/5.0',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ]),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Cast & Crew\n',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                castAndCrewSection(person1Image, person1),
                castAndCrewSection(person2Image, person2),
                castAndCrewSection(person3Image, person3),
                castAndCrewSection(person4Image, person4),
              ],
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Storyline',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: RichText(
                text: TextSpan(
                    text: storyLine,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    )),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  context.router.push(DateTimeTheaterSelectionPageRoute(
                    movieName: movieName,
                    movieImage: movieImage,
                    rating: rating,
                    stars: stars,
                    gerne: gerne,
                  ));
                },
                child: const Text(
                  '\t\tBook Now\t\t',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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

Widget castAndCrewSection(String personImage, String personName) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image.asset(
          personImage,
          fit: BoxFit.cover,
          height: 100,
          width: 80,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        personName,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.white70,
        ),
      ),
    ],
  );
}
