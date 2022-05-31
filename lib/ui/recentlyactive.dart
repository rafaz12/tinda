import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentlyActive extends StatelessWidget {
  const RecentlyActive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.circle, color: Colors.green, size: 17.0),
          onPressed: () {},
        ),
        Text("Recently Active",
            style: TextStyle(color: Colors.white, fontSize: 17.0))
      ],
    );
  }
}
