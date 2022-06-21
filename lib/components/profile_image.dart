import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final Image image;
  const ProfileImage({required this.image});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, -0.6),
      child: Container(
        height: 200,
        width: 200,
        child: FittedBox(fit: BoxFit.fill, child: ClipOval(child: image)),
      ),
    );
  }
}
