// profil_screen_bloc.dart

abstract class ChatGroupEvent {}

class TabChangeEvent extends ChatGroupEvent {

  TabChangeEvent(int index, {required this.tabIndex});
  final int tabIndex;
}
