// ignore: file_names
// ignore_for_file: avoid_unnecessary_containers

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tinda/components/chatcard.dart';
import 'package:tinda/components/user.dart';

class DataAPI extends StatefulWidget {
  const DataAPI({Key? key}) : super(key: key);

  @override
  State<DataAPI> createState() => _DataAPIState();
}

class _DataAPIState extends State<DataAPI> {
  List<String> times = [
    "18:00",
    "19:34",
    "23:34",
    "18:00",
    "19:34",
    "23:34",
    "18:00",
    "19:34",
    "23:34",
    "10:23"
  ];
  Future getUserData() async {
    var response =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    var i = 0;
    for (var u in jsonData) {
      User user = User(u["name"], u["username"], u["id"].toString());
      i++;
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: getUserData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(child: Text('Loading . . .'));
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return ChatCard(snapshot.data[i].name,
                          snapshot.data[i].description, times[i]);
                    });
              }
            }));
  }
}
