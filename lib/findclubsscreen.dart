import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'newClubListing.dart';

// This reflects the state of this page
class FindClubsScreen extends StatefulWidget {
  const FindClubsScreen({super.key});

  @override
  State<FindClubsScreen> createState() => _FindClubsScreenState();
}

// Here, we are going to want to use the ListTile class to display the tiles of clubs
class _FindClubsScreenState extends State<FindClubsScreen> {
  // this is our list of clubs, with their info for each of their tiles
  List<String> findClubsTitles = <String>[
    'SCU Ski and Snowboard Club',
    'GetVirtual'
  ];
  List<String> findClubsDescriptions = <String>[
    'Join a fun group of people who love to ski and snowboard!',
    'Work with local businesses to adapt to the digital age and gain real-world experience!'
  ];
  List<String> findClubsImages = <String>[
    'assets/Circular Logo.png',
    'assets/GetVirtualLogo.png'
  ];
  int _counter = 0;

  void addClubToSearch() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const NewListing()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: addClubToSearch,
          tooltip: 'Add a Club',
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: findClubsTitles.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: ListTile(
                    leading: Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(findClubsImages[index]),
                            ))),
                    title: Text(findClubsTitles[index]),
                    subtitle: Text(findClubsDescriptions[index]),
                    trailing: const Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ))
          ],
        ));
  }
}
