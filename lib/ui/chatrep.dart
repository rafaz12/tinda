import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tinda/ui/textfield_type.dart';

class ChatRep extends StatefulWidget {
  String name, text, time;
  ChatRep(this.name, this.text, @required this.time);

  @override
  State<ChatRep> createState() => _ChatRepState();
}

class _ChatRepState extends State<ChatRep> {
  List<ChatBox> chatMessages = [];

  TextEditingController myController = TextEditingController();
  String text = '';

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(children: [
        Text(widget.name),
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
            ListView.builder(
                itemCount: chatMessages.length,
                itemBuilder: (context, i) {
                  return chatMessages[i];
                }),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      controller: myController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              setState(() {
                                text = myController.text;
                                chatMessages.add(ChatBox(text));
                                myController.clear();
                              });
                            }),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Type a text',
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class ChatBox extends StatelessWidget {
  String text;

  ChatBox(this.text);

  @override
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
}
