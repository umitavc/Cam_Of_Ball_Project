part of 'bottom_navigator_bar_bloc.dart';

abstract class HomeScreenBlocState  {
  final int tabIndex;
  
  const HomeScreenBlocState({required this.tabIndex});
}

 class HomeScreenBlocInitial extends HomeScreenBlocState {
  HomeScreenBlocInitial({required super.tabIndex});
}
