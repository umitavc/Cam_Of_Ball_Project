abstract class ProfilScreenState {
  final int tabIndex;
  const ProfilScreenState({required this.tabIndex});
}

class TabChangedState extends ProfilScreenState {
  TabChangedState({required super.tabIndex});
}
