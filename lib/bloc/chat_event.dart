part of 'chat_bloc.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class SendEvent extends ChatEvent {
  final Chat chat;
  const SendEvent({required this.chat});
  @override
  List<Object> get props => [chat];
}
