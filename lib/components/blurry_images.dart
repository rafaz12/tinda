import 'dart:ui';

import 'package:flutter/cupertino.dart';

class BlurryImage extends StatefulWidget {
  const BlurryImage({Key? key}) : super(key: key);

  @override
  State<BlurryImage> createState() => _BlurryImageState();
}

class _BlurryImageState extends State<BlurryImage> {
  bool blur = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => setState(() {
              blur = !blur;
            }),
        child: Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/rafa.jpeg'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
                child: BackdropFilter(
                    filter: blur
                        ? ImageFilter.blur(sigmaX: 0, sigmaY: 0)
                        : ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      alignment: Alignment.center,
                    )))));
  }
}
