part of 'bottom_navigator_bar_bloc.dart';

abstract class HomeScreenBlocEvent {}

class TabChange extends HomeScreenBlocEvent {

  TabChange({required this.tabIndex});
  final int tabIndex;
}
