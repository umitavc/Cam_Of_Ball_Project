abstract class ChatGroupState {
  final int tabIndex;
  const ChatGroupState({required this.tabIndex});
}

class TabChangedState extends ChatGroupState {
  TabChangedState({required super.tabIndex});
}

