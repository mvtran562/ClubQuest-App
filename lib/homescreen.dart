import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of featured Clubs (Photos)
  List<String> featuredClubsPhoto = <String>[
    "assets/SkiClub.jpg",
    "assets/CarClub.jpg"
  ];
  // List of featured Clubs (Titles)
  List<String> featuredClubsTitle = <String>[
    "SCU Ski and Board Club",
    "SCU Car Club"
  ];

  List<String> featuredClubsDescription = <String>[
    "It's the winter season, so strap in and hit the slopes with Santa Clara University's own ski and snowboard club! We do weekly trips to Tahoe and other fun things to be planned. GET STOKED!",
    "Rev your engines! SCU Car Club is doing weekly drives, whether it be through the canyons or to your favorite late night snack spot. Don't have a car? Don't worry! We have plenty of members that would love to give ride-alongs"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // this is the list on the homepage that has all of the featured clubs

        body: Column(children: [
      Expanded(
          child: ListView.separated(
        itemCount: featuredClubsPhoto.length + 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Stack(children: <Widget>[
              Container(
                  child: Stack(fit: StackFit.loose, children: const <Widget>[
                Image(image: AssetImage("assets/HomePageHeader.png")),
              ])),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Friendships are a Click Away...",
                    style: GoogleFonts.bebasNeue(
                        fontSize: 45, color: Colors.white),
                  ))
            ]);
          }

          if (index == 1) {
            return Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: Alignment.center,
              child: Text("This Month's Featured Clubs",
                  style: GoogleFonts.bebasNeue(fontSize: 40)),
            );
          } else {
            return Container(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(fit: StackFit.loose, children: <Widget>[
                      Container(
                          color: Colors.black,
                          child: Opacity(
                              opacity: 0.9,
                              child: Image(
                                height: 350,
                                fit: BoxFit.fitHeight,
                                image:
                                    AssetImage(featuredClubsPhoto[index - 2]),
                              ))),
                      Positioned(
                          top: 4,
                          right: 10,
                          child: Text(
                            featuredClubsTitle[index - 2],
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                      const Positioned(
                          top: 10,
                          left: 5,
                          child: Image(
                              height: 50,
                              image: AssetImage("assets/FeaturedSymbol.png"))),
                    ])));
          }
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(color: Colors.white),
      ))
    ]));
  }
}
