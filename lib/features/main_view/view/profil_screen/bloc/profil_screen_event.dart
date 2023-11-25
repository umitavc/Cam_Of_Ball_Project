// profil_screen_bloc.dart

abstract class ProfilScreenEvent {}

class TabChangeEvent extends ProfilScreenEvent {

  TabChangeEvent(int index, {required this.tabIndex});
  final int tabIndex;
}
