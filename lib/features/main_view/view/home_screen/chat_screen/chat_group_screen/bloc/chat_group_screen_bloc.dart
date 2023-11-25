// chat_group_screen.dart



import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/bloc/chat_group_screen_event.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/chat_screen/chat_group_screen/bloc/chat_group_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatGroupBloc extends Bloc<ChatGroupEvent, ChatGroupState> {
  ChatGroupBloc() : super(TabChangedState(tabIndex: 0)) {
    on<ChatGroupEvent>((event, emit) {
      if (event is TabChangeEvent) {
        emit(TabChangedState(tabIndex: event.tabIndex));
      }
    });
  }
}
