import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tinda/ui/textfield_type.dart';

class ChatRep extends StatelessWidget {
  String name, text, time;
  ChatRep(this.name, this.text, @required this.time);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(children: [
        Text(name),
        SizedBox(
          width: 20,
        ),
        IconButton(onPressed: null, icon: Icon(Icons.call, color: Colors.white))
      ])),
      backgroundColor: Colors.purple,
      body: Container(
        color: Color.fromARGB(234, 255, 255, 255),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.9, -0.8),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(text),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Type a text',
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
