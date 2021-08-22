import 'package:moviebee/presentation/core/movie_assets.dart';

class Movie {
  String movieName;
  String movieImage;
  String rating;
  String stars;
  String gerne;
  List<CastAndCrew> castAndCrew;
  String storyLine;

  Movie(
      {required this.movieName,
      required this.movieImage,
      required this.rating,
      required this.stars,
      required this.gerne,
      required this.castAndCrew,
      required this.storyLine});
}

List<Movie> nowPlayingList = [
  Movie(
    movieName: 'Jumanji',
    movieImage: jumanji,
    rating: '4.2',
    stars: '4',
    gerne: 'Adventure/Comedy ‧ 2h 3m',
    castAndCrew: [
      CastAndCrew(personName: 'Dwayne Johnson', personPhoto: dwayne),
      CastAndCrew(personName: 'Karen Gillan', personPhoto: karen),
      CastAndCrew(personName: 'Kevin Hart', personPhoto: kevin),
      CastAndCrew(personName: 'Jack Black', personPhoto: jack),
    ],
    storyLine:
        "When Spencer goes back into the fantastical world of Jumanji, pals Martha, Fridge and Bethany re-enter the game to bring him home. But the game is now broken -- and fighting back. Everything the friends know about Jumanji is about to change, as they soon discover there's more obstacles and more danger to overcome.",
  ),
  Movie(
    movieName: 'Crawl',
    movieImage: crawl,
    rating: '3.6',
    stars: '3.5',
    gerne: 'Horror/Disaster ‧ 1h 27m',
    castAndCrew: [
      CastAndCrew(personName: 'Barry Pepper', personPhoto: barry),
      CastAndCrew(personName: 'Anson Boon', personPhoto: anson),
      CastAndCrew(personName: 'George Somner', personPhoto: george),
      CastAndCrew(personName: 'Ami Metcalf', personPhoto: ami),
    ],
    storyLine:
        "When a massive hurricane hits her Florida town, young Haley ignores the evacuation orders to search for her missing father, Dave. After finding him gravely injured in their family home, the two of them become trapped by the rapidly encroaching floodwaters. With the storm strengthening, Haley and Dave discover an even greater threat than the rising water level -- a relentless attack from a pack of gigantic alligators.",
  ),
  Movie(
    movieName: 'Joker',
    movieImage: joker,
    rating: '4.5',
    stars: '4.5',
    gerne: 'Crime/Drama ‧ 2h 2m',
    castAndCrew: [
      CastAndCrew(personName: 'Joaquin Phoenix', personPhoto: joaquin),
      CastAndCrew(personName: 'Zazie Beetz', personPhoto: zazie),
      CastAndCrew(personName: 'Brett Cullen', personPhoto: brett),
      CastAndCrew(personName: 'Marc Maron', personPhoto: marc),
    ],
    storyLine:
        "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks -- the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he's part of the world around him. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.",
  ),
  Movie(
    movieName: 'Dolittle',
    movieImage: dolittle,
    rating: '4.0',
    stars: '3.5',
    gerne: 'Family/Comedy ‧ 1h 41m',
    castAndCrew: [
      CastAndCrew(personName: 'Robert Downey, Jr.', personPhoto: robert),
      CastAndCrew(personName: 'Tom Holland', personPhoto: tom),
      CastAndCrew(personName: 'Rami Malek', personPhoto: rami),
      CastAndCrew(personName: 'Selena Gomez', personPhoto: selena),
    ],
    storyLine:
        'Dr. John Dolittle lives in solitude behind the high walls of his lush manor in 19th-century England. His only companionship comes from an array of exotic animals that he speaks to on a daily basis. But when young Queen Victoria becomes gravely ill, the eccentric doctor and his furry friends embark on an epic adventure to a mythical island to find the cure.',
  ),
  Movie(
    movieName: 'Avengers',
    movieImage: avengers,
    rating: '4.7',
    stars: '4.5',
    gerne: 'Action/Sci-fi ‧ 2h 40m',
    castAndCrew: [
      CastAndCrew(personName: 'Scarlett Johansson', personPhoto: scarlett),
      CastAndCrew(personName: 'Tom Holland', personPhoto: tom),
      CastAndCrew(personName: 'Robert Downey, Jr.', personPhoto: robert),
      CastAndCrew(personName: 'Chris Hemsworth', personPhoto: chris),
    ],
    storyLine:
        'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.',
  ),
  Movie(
    movieName: 'Tenet',
    movieImage: tenet,
    rating: '3.9',
    stars: '3.5',
    gerne: 'Action/Sci-fi ‧ 2h 30m',
    castAndCrew: [
      CastAndCrew(personName: 'John David', personPhoto: john),
      CastAndCrew(personName: 'Robert Pattinson', personPhoto: robertn),
      CastAndCrew(personName: 'Elizabeth Debicki', personPhoto: elizabeth),
      CastAndCrew(personName: 'Kenneth Branagh', personPhoto: kenneth),
    ],
    storyLine:
        'A secret agent is given a single word as his weapon and sent to prevent the onset of World War III. He must travel through time and bend the laws of nature in order to be successful in his mission.',
  ),
];

List<Movie> comingSoonList = [
  Movie(
    movieName: 'Tom & Jerry',
    movieImage: tomAndJerry,
    rating: '4.0',
    stars: '4.0',
    gerne: 'Family/Comedy ‧ 1h 41m',
    castAndCrew: [
      CastAndCrew(personName: 'Chloë Grace', personPhoto: chloe),
      CastAndCrew(personName: 'Colin Jost', personPhoto: colin),
      CastAndCrew(personName: 'Ozuna', personPhoto: ozuna),
      CastAndCrew(personName: 'Tim Story', personPhoto: tim),
    ],
    storyLine:
        "A legendary rivalry reemerges when Jerry moves into New York City's finest hotel on the eve of the wedding of the century, forcing the desperate event planner to hire Tom to get rid of him. As mayhem ensues, the escalating cat-and-mouse battle soon threatens to destroy her career, the wedding, and possibly the hotel itself.",
  ),
  Movie(
    movieName: 'Wonder Woman 1984',
    movieImage: wonderwoman,
    rating: '2.6',
    stars: '2.5',
    gerne: 'Action/Adventure ‧ 2h 31m',
    castAndCrew: [
      CastAndCrew(personName: 'Gal Gadot', personPhoto: gal),
      CastAndCrew(personName: 'Kristen Wiig', personPhoto: kristen),
      CastAndCrew(personName: 'Chris Pine', personPhoto: chrispine),
      CastAndCrew(personName: 'Pedro Pascal', personPhoto: pedro),
    ],
    storyLine:
        "Diana Prince lives quietly among mortals in the vibrant, sleek 1980s -- an era of excess driven by the pursuit of having it all. Though she's come into her full powers, she maintains a low profile by curating ancient artifacts, and only performing heroic acts incognito. But soon, Diana will have to muster all of her strength, wisdom and courage as she finds herself squaring off against Maxwell Lord and the Cheetah, a villainess who possesses superhuman strength and agility.",
  ),
  Movie(
    movieName: 'Enola Holmes',
    movieImage: enolaholmes,
    rating: '4.4',
    stars: '4.0',
    gerne: 'Mystery/Adventure ‧ 2h 3m',
    castAndCrew: [
      CastAndCrew(personName: 'Millie Bobby', personPhoto: millie),
      CastAndCrew(personName: 'Louis Partridge', personPhoto: louis),
      CastAndCrew(personName: 'Henry Cavill', personPhoto: henry),
      CastAndCrew(personName: 'Sam Claflin', personPhoto: sam),
    ],
    storyLine:
        'While searching for her missing mother, intrepid teen Enola Holmes uses her sleuthing skills to outsmart big brother Sherlock and help a runaway lord.',
  ),
  Movie(
    movieName: 'Fantasy Island',
    movieImage: fantasyisland,
    rating: '3.2',
    stars: '3.0',
    gerne: 'Horror/Thriller ‧ 1h 48m',
    castAndCrew: [
      CastAndCrew(personName: 'Lucy Hale', personPhoto: lucy),
      CastAndCrew(personName: 'Michael Peña', personPhoto: michael),
      CastAndCrew(personName: 'Maggie Q', personPhoto: maggie),
      CastAndCrew(personName: 'Portia Doubleday', personPhoto: portia),
    ],
    storyLine:
        "The enigmatic Mr Roarke makes the secret dreams of his lucky guests come true at a luxurious but remote tropical resort, but when the fantasies turn into nightmares, the guests have to solve the island's mystery in order to escape with their lives.",
  ),
  Movie(
    movieName: 'Shazam',
    movieImage: shazam,
    rating: '4.3',
    stars: '4.0',
    gerne: 'Action/Adventure ‧ 2h 12m',
    castAndCrew: [
      CastAndCrew(personName: 'Zachary Levi', personPhoto: zachary),
      CastAndCrew(personName: 'Asher Angel', personPhoto: asher),
      CastAndCrew(personName: 'Jack Dylan', personPhoto: jackdylan),
      CastAndCrew(personName: 'Mark Strong', personPhoto: mark),
    ],
    storyLine:
        "We all have a superhero inside of us -- it just takes a bit of magic to bring it out. In 14-year-old Billy Batson's case, all he needs to do is shout out one word to transform into the adult superhero Shazam. Still a kid at heart, Shazam revels in the new version of himself by doing what any other teen would do -- have fun while testing out his newfound powers. But he'll need to master them quickly before the evil Dr. Thaddeus Sivana can get his hands on Shazam's magical abilities.",
  ),
  Movie(
    movieName: 'Venom',
    movieImage: venom,
    rating: '4.5',
    stars: '4.5',
    gerne: 'Action/Sci-fi ‧ 2h 20m',
    castAndCrew: [
      CastAndCrew(personName: 'Tom Hardy', personPhoto: tomhardy),
      CastAndCrew(personName: 'Michelle Williams', personPhoto: michelle),
      CastAndCrew(personName: 'Woody Harrelson', personPhoto: woody),
      CastAndCrew(personName: 'Riz Ahmed', personPhoto: riz),
    ],
    storyLine:
        "Journalist Eddie Brock is trying to take down Carlton Drake, the notorious and brilliant founder of the Life Foundation. While investigating one of Drake's experiments, Eddie's body merges with the alien Venom -- leaving him with superhuman strength and power. Twisted, dark and fueled by rage, Venom tries to control the new and dangerous abilities that Eddie finds so intoxicating.",
  ),
];

class CastAndCrew {
  String personName;
  String personPhoto;

  CastAndCrew({
    required this.personName,
    required this.personPhoto,
  });
}
