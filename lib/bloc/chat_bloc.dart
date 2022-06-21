import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tinda/components/chatbox.dart';

import 'chat_model.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(TextSent(chats: Chat.chats)) {
    on<SendEvent>(sendMessage);
  }
  sendMessage(SendEvent event, Emitter<ChatState> emit) {
    if (state is TextSent) {
      final state = this.state as TextSent;
      emit(TextSent(chats: List.from(state.chats)..add(event.chat)));
    }
  }
}
