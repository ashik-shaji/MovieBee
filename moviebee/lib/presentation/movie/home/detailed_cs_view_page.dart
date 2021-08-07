import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DetailedCMViewPage extends StatelessWidget {
  const DetailedCMViewPage({
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
                    icon: const Icon(Icons.arrow_back),
                  ),
                )
              ],
            ),
            Center(
              child: Text(
                movieName,
                style: const TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                gerne,
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('Cast & Crew\n'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                castAndCrewCMSection(person1Image, person1),
                castAndCrewCMSection(person2Image, person2),
                castAndCrewCMSection(person3Image, person3),
                castAndCrewCMSection(person4Image, person4),
              ],
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Storyline',
                style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}

Widget castAndCrewCMSection(String personImage, String personName) {
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
