import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  String text;

  ChatBox({required this.text});

  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(text),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.purpleAccent],
                  end: Alignment.centerLeft,
                  begin: Alignment.centerRight,
                ),
              ),
            )));
  }

  @override
  // TODO: implement props
  List<Object?> get props => [text];
}
