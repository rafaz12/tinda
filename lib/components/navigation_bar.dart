// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tinda/screens/chatpage.dart';
import 'package:tinda/screens/matchesUI.dart';
import 'package:tinda/screens/profileUI.dart';
import 'package:tinda/screens/profile_page.dart';

class NavigationBarr extends StatefulWidget {
  const NavigationBarr({Key? key}) : super(key: key);

  @override
  State<NavigationBarr> createState() => _NavigationBarrState();
}

class _NavigationBarrState extends State<NavigationBarr> {
  int currentIndex = 0;
  final screens = [
    Profile(),
    Matches(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30.0,
          selectedItemColor: Colors.purple,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) => setState(() {
            currentIndex = index;
            Colors.black;
          }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'homae',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'fav',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: '',
            ),
          ],
        ));
  }
}
