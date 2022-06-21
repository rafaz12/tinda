import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinda/components/recentlyactive.dart';

class UserProfile extends StatefulWidget {
  String name, occupation;
  List<Image> images;
  int age;
  bool swiped = false;
  UserProfile(
      {Key? key,
      required this.swiped,
      required this.images,
      required this.name,
      required this.age,
      required this.occupation})
      : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int i = 0;

  Widget profileRepresentation(name, age, occupation) {
    return Text(
      name + " " + '$age' + ',' + '\n' + occupation,
      style: TextStyle(
          fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          //insers pic of profile
          Align(
              alignment: Alignment(0, 0),
              child: Container(
                  height: 580,
                  width: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: widget.images[i].image, fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(16),
                  ))),
          // On tap goes to previous pic and swipe right skips
          Align(
            alignment: Alignment(-1, 0),
            child: GestureDetector(
              onTap: () {
                if (i > 0 && !widget.swiped) {
                  setState(() {
                    i = i - 1;
                  });
                }
              },
              child: Container(
                  height: 580,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16)),
                  )),
            ),
          ),
          // On tap goes to next pic and swipe left skips
          Align(
            alignment: Alignment(1, 0),
            child: GestureDetector(
              onTap: () {
                if (i < widget.images.length - 1 && !widget.swiped) {
                  setState(() {
                    i++;
                  });
                }
              },
              child: Container(
                  height: 580,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                  )),
            ),
          ),
          Align(
            alignment: Alignment(-0.7, 0.5),
            child: profileRepresentation(
                widget.name, widget.age, widget.occupation),
          ),
          Align(
            alignment: Alignment(-0.9, 0.7),
            child: RecentlyActive(),
          ),
        ],
      ),
    );
  }
}
