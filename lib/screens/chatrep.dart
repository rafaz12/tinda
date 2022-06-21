import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinda/bloc/chat_bloc.dart';
import 'package:tinda/bloc/chat_model.dart';
import 'package:tinda/components/chatbox.dart';

class ChatRep extends StatefulWidget {
  String name, text, time;
  ChatRep(this.name, this.text, @required this.time);

  @override
  State<ChatRep> createState() => _ChatRepState();
}

class _ChatRepState extends State<ChatRep> {
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
      body: Builder(builder: (context) {
        return BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            if (state is TextSent) {
              return Container(
                color: Color.fromARGB(234, 255, 255, 255),
                child: Stack(
                  children: [
                    ListView.builder(
                        itemCount: state.chats.length,
                        itemBuilder: (context, i) {
                          return ChatBox(text: state.chats[i].text);
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
                                      text = myController.text;
                                      context.read<ChatBloc>().add(
                                          SendEvent(chat: Chat(text: text)));
                                      myController.clear();
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
              );
            } else {
              return Container(child: Text('Something went wrong. '));
            }
          },
        );
      }),
    );
  }
}
