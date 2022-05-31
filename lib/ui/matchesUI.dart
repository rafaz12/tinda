// ignore_for_file: file_names, unnecessary_new

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinda/components/navigation_bar.dart';
import 'package:tinda/ui/profileUI.dart';

import 'blurry_images.dart';

class Matches extends StatefulWidget {
  Matches({Key? key}) : super(key: key);

  MatchesState createState() => MatchesState();
}

class MatchesState extends State<Matches> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: Align(
                alignment: Alignment.topLeft,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite,
                            color: Colors.purple, size: 30.0),
                        onPressed: () {},
                      ),
                      Text('Likes'),
                    ]))),
        body: Container(
            child: Stack(
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        BlurryImage(),
                        BlurryImage(),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        BlurryImage(),
                        BlurryImage(),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        BlurryImage(),
                        BlurryImage(),
                      ])
                ])
          ],
        )));
  }
}
