import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class TextfieldType extends StatelessWidget {
  IconData icon;
  String text;

  TextfieldType(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
          child: TextField(
              decoration: InputDecoration(
            hintText: text,
            icon: Icon(icon),
          )),
        ));
  }
}
