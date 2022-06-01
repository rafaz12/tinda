// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tinda/components/navigation_bar.dart';
import 'package:tinda/ui/signup.dart';
import 'package:tinda/ui/textfield_type.dart';
import 'ui/logo.dart';
import 'ui/profileUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SignIn(title: ''),
    );
  }
}

class SignIn extends StatefulWidget {
  const SignIn({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
      Logo(50, Icons.favorite, 300),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextfieldType(Icons.email, 'EMAIL'),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: TextfieldType(Icons.vpn_key, 'PASSWORD'),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavigationBarr()),
            );
          },
          child: Container(
              child: Center(
                child: Text('LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: LinearGradient(
                    colors: [Colors.purple, Colors.purpleAccent],
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                  ))),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 140, left: 110),
        child: Row(
          children: [
            Text('New here?', style: TextStyle(fontSize: 17)),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Text(
                    ' Sign up',
                    style: TextStyle(color: Colors.purple, fontSize: 17),
                  ),
                ))
          ],
        ),
      ),
    ])));
  }
}
