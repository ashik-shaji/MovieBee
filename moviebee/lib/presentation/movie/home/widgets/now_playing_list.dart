import 'package:flutter/material.dart';
import 'package:moviebee/presentation/core/movies_details.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class NowPlayingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: nowPlayingList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.router.push(DetailedViewPageRoute(
                movieName: nowPlayingList[index].movieName,
                movieImage: nowPlayingList[index].movieImage,
                rating: nowPlayingList[index].rating,
                stars: nowPlayingList[index].stars,
                gerne: nowPlayingList[index].gerne,
                storyLine: nowPlayingList[index].storyLine,
                person1: nowPlayingList[index].castAndCrew[0].personName,
                person1Image: nowPlayingList[index].castAndCrew[0].personPhoto,
                person2: nowPlayingList[index].castAndCrew[1].personName,
                person2Image: nowPlayingList[index].castAndCrew[1].personPhoto,
                person3: nowPlayingList[index].castAndCrew[2].personName,
                person3Image: nowPlayingList[index].castAndCrew[2].personPhoto,
                person4: nowPlayingList[index].castAndCrew[3].personName,
                person4Image: nowPlayingList[index].castAndCrew[3].personPhoto,
              ));
            },
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    nowPlayingList[index].movieImage,
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 150,
                child: Text(
                  nowPlayingList[index].movieName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 170,
                child: stars(nowPlayingList[index].stars),
              ),
              Positioned(
                left: 160,
                top: 173,
                child: Text(
                  '${nowPlayingList[index].rating}/5.0',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ]),
          );
        });
  }
}

Widget stars(String count) {
  if (count == '2.5') {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star_half, color: Colors.yellow),
        const Icon(Icons.star_border, color: Colors.yellow),
        const Icon(Icons.star_border, color: Colors.yellow),
      ],
    );
  } else if (count == '3') {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star_border, color: Colors.yellow),
        const Icon(Icons.star_border, color: Colors.yellow),
      ],
    );
  } else if (count == '3.5') {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star_half, color: Colors.yellow),
        const Icon(Icons.star_border, color: Colors.yellow),
      ],
    );
  } else if (count == '4') {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star_border, color: Colors.yellow),
      ],
    );
  } else if (count == '4.5') {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star, color: Colors.yellow),
        const Icon(Icons.star_half, color: Colors.yellow),
      ],
    );
  }

  return Row(
    children: [
      const Icon(Icons.star, color: Colors.yellow),
      const Icon(Icons.star, color: Colors.yellow),
      const Icon(Icons.star, color: Colors.yellow),
      const Icon(Icons.star, color: Colors.yellow),
      const Icon(Icons.star, color: Colors.yellow),
    ],
  );
}
