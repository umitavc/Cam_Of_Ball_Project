abstract class ViewProfilScreenState {
  final int tabIndex;
  const ViewProfilScreenState({required this.tabIndex});
}

class TabChangedState extends ViewProfilScreenState {
  TabChangedState({required super.tabIndex});
}
