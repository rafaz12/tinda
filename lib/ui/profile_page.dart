import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
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
                      Text('Profile'),
                    ]))),
        body: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(360),
                bottomRight: Radius.circular(360)),
            color: Colors.white,
          ),
          height: 475,
          width: 700,
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment(0, -0.6),
              child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    image: DecorationImage(
                        image: AssetImage('assets/images/rafa.jpeg'),
                        fit: BoxFit.cover),
                  )),
            ),
            Align(
                alignment: Alignment(0, 0.25),
                child: Text(
                  'Rafael, 21',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
            Align(
                alignment: Alignment(0.0, 0.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.settings,
                            color: Colors.purple,
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(), //<-- SEE HERE
                              padding: EdgeInsets.all(20),
                              primary: Colors.white,
                              shadowColor: Colors.grey,
                              elevation: 5)),
                      SizedBox(
                        height: 15,
                      ),
                      Text('SETTINGS',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 75,
                          width: 75,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                size: 30,
                                color: Colors.purple,
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(), //<-- SEE HERE
                                  padding: EdgeInsets.all(20),
                                  primary: Colors.white,
                                  shadowColor: Colors.grey,
                                  elevation: 5)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text('EDIT',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.security,
                              color: Colors.purple,
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), //<-- SEE HERE
                                padding: EdgeInsets.all(20),
                                primary: Colors.white,
                                shadowColor: Colors.grey,
                                elevation: 5)),
                        SizedBox(
                          height: 15,
                        ),
                        Text('SECURITY',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )),
          ]),
        ));
  }
}
