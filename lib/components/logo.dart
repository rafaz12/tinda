import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  double sizeLogo;
  IconData logo;
  double heightBox;
  Logo(this.sizeLogo, this.logo, this.heightBox);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: IconButton(
              icon: Icon(
                logo,
                color: Colors.white,
                size: sizeLogo,
              ),
              onPressed: null)),
      height: heightBox,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100),
          ),
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.purpleAccent],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          )),
    );
  }
}
