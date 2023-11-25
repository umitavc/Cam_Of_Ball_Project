abstract class ViewProfilScreenEvent {}

class TabChangeEvent extends ViewProfilScreenEvent {

  TabChangeEvent(int index, {required this.tabIndex});
  final int tabIndex;
}
