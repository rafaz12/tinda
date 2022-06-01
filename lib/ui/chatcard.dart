import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinda/ui/chatrep.dart';

class ChatCard extends StatelessWidget {
  String name, text, time;
  ChatCard(this.name, this.text, @required this.time);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatRep(name, text, time),
            ));
      },
      leading: CircleAvatar(radius: 25),
      trailing: Text(time),
      title: Text(name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(text, style: TextStyle(fontSize: 13)),
    );
  }
}
