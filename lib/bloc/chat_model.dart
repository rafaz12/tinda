import 'package:equatable/equatable.dart';

class Chat extends Equatable {
  final String text;
  const Chat({required this.text});

  @override
  // TODO: implement props
  List<Object?> get props => [text];

  static List<Chat> chats = [];
}
