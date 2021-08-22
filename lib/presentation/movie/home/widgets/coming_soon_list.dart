import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moviebee/presentation/core/movies_details.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class ComingSoonList extends StatelessWidget {
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
              context.router.push(DetailedCMViewPageRoute(
                movieName: comingSoonList[index].movieName,
                movieImage: comingSoonList[index].movieImage,
                rating: comingSoonList[index].rating,
                stars: comingSoonList[index].stars,
                gerne: comingSoonList[index].gerne,
                storyLine: comingSoonList[index].storyLine,
                person1: comingSoonList[index].castAndCrew[0].personName,
                person1Image: comingSoonList[index].castAndCrew[0].personPhoto,
                person2: comingSoonList[index].castAndCrew[1].personName,
                person2Image: comingSoonList[index].castAndCrew[1].personPhoto,
                person3: comingSoonList[index].castAndCrew[2].personName,
                person3Image: comingSoonList[index].castAndCrew[2].personPhoto,
                person4: comingSoonList[index].castAndCrew[3].personName,
                person4Image: comingSoonList[index].castAndCrew[3].personPhoto,
              ));
            },
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    comingSoonList[index].movieImage,
                    fit: BoxFit.cover,
                    height: 200,
                    width: 300,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 160,
                child: Text(
                  comingSoonList[index].movieName,
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
