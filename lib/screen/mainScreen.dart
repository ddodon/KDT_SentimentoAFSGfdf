import 'package:flutter/material.dart';
import '../constants.dart';
import 'home/home.dart';
import 'actingScreen/actingScreen.dart';
import 'sentScreen/sentScreen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/mainScreens";

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            Home(),
            actingScreen(),
            sentScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 45,
                  height: 45,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/feeling.png"))),
              label: "감정학습",
            ),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: 45,
                    height: 45,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/reading-book.png"))),
                label: "행동학습"),
            BottomNavigationBarItem(
                icon: SizedBox(
                    width: 45,
                    height: 45,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/person.png"))),
                label: "언어학습")
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: kPrimaryColor,
          onTap: onTaped,
        ));
  }

  void onTaped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
