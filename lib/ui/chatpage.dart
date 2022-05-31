import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Data_API.dart';
import 'chatcard.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chats'),
        ),
        body: DataAPI());
  }
}
