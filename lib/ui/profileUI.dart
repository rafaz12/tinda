// ignore_for_file: file_names, unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinda/components/navigation_bar.dart';
import 'package:tinda/ui/userprofile.dart';

import 'matchesUI.dart';

class Profile extends StatefulWidget {
  Profile();

  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  int j = 0;
  List<UserProfile> userProfiles = [
    UserProfile(
      images: <AssetImage>[
        AssetImage('assets/images/rafa.jpeg'),
        AssetImage('assets/images/zyzz.jpeg')
      ],
      name: 'Rafa',
      age: 21,
      occupation: 'Professor',
      swiped: false,
    ),
    UserProfile(images: <AssetImage>[
      AssetImage('assets/images/depp.jpg'),
      AssetImage('assets/images/depp2.jpg')
    ], name: 'Depp', age: 52, occupation: 'Actor', swiped: false),
    UserProfile(
      images: <AssetImage>[
        AssetImage('assets/images/stijni2.png'),
        AssetImage('assets/images/stijni1.png')
      ],
      name: 'Stijn',
      age: 20,
      occupation: 'Motherfucker',
      swiped: false,
    ),
    UserProfile(
      images: <AssetImage>[
        AssetImage('assets/images/tony1.jpeg'),
        AssetImage('assets/images/tony2.jpeg'),
        AssetImage('assets/images/tony3.jpeg'),
        AssetImage('assets/images/tony4.jpeg')
      ],
      name: 'Tony',
      age: 21,
      occupation: 'Fiddle Minger',
      swiped: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final swiped = ValueNotifier<bool>(userProfiles[j].swiped);
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
                      Text('Sexy'),
                    ]))),
        backgroundColor: Colors.grey,
        body: GestureDetector(
          onHorizontalDragEnd: (details) {
            setState(() {
              if (j < userProfiles.length - 1) j++;
            });
          },
          child: userProfiles[j],
        ));
  }
}
