import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinda/components/logo.dart';
import 'package:tinda/components/navigation_bar.dart';
import 'package:tinda/main.dart';
import 'package:tinda/components/textfield_type.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                child: Column(mainAxisSize: MainAxisSize.max, children: [
      Logo(50, Icons.favorite, 300),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: TextfieldType(Icons.account_circle, 'USERNAME'),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: TextfieldType(Icons.email, 'EMAIL'),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: TextfieldType(Icons.vpn_key, 'PASSWORD'),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavigationBarr()),
            );
          },
          child: Container(
              child: Center(
                child: Text('SIGN UP',
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
        padding: EdgeInsets.only(top: 70, left: 55),
        child: Row(
          children: [
            Text('Already have an account?', style: TextStyle(fontSize: 17)),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignIn(
                                title: '',
                              )));
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Text(
                    ' Sign in',
                    style: TextStyle(color: Colors.purple, fontSize: 17),
                  ),
                ))
          ],
        ),
      ),
    ]))));
  }
}
