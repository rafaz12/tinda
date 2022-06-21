part of 'chat_bloc.dart';

abstract class ChatState extends Equatable {
  const ChatState();

  @override
  List<Object> get props => [];
}

class ChatInitial extends ChatState {}

// ignore: must_be_immutable
class TextSent extends ChatState {
  List<Chat> chats;
  TextSent({required this.chats});
  @override
  List<Object> get props => [chats];
}
