import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'findclubsscreen.dart';
import 'account.dart';

void main() => runApp(const MyApp());

// The heart of the app. App is stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'ClubQuest';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyPage(),
    );
  }
}

// The state of the page.
class MyPage extends StatefulWidget {
  const MyPage({super.key});
  @override
  State<MyPage> createState() => _MainPage();
}

// Bottom Menu Widget _______________________________
class _MainPage extends State<MyPage> {
  int _selectedIndex = 0;
  @override
  List menuOptions = const [HomeScreen(), FindClubsScreen(), AccountScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Main Flutter Build, Has all main elements
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/aawlogo.png",
          scale: 30,
          alignment: Alignment.center,
        ),
        backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      ),
      body: menuOptions[_selectedIndex],

      // building the bottom menu widget
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people_rounded),
            label: 'Find Clubs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.blueGrey[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
