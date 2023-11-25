

import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/bloc/view_profile_screen_event.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/bloc/view_profile_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewProfilScreenBloc extends Bloc<ViewProfilScreenEvent, ViewProfilScreenState> {
  ViewProfilScreenBloc() : super(TabChangedState(tabIndex: 0)) {
    on<ViewProfilScreenEvent>((event, emit) {
      if (event is TabChangeEvent) {
        emit(TabChangedState(tabIndex: event.tabIndex));
      }
    });
  }
}
