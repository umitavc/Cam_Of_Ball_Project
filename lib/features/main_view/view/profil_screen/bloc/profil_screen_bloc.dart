// profil_screen_bloc.dart

import 'package:bloc/bloc.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/bloc/profil_screen_event.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/bloc/profil_screen_state.dart';

class ProfilScreenBloc extends Bloc<ProfilScreenEvent, ProfilScreenState> {
  ProfilScreenBloc() : super(TabChangedState(tabIndex: 0)) {
    on<ProfilScreenEvent>((event, emit) {
      if (event is TabChangeEvent) {
        emit(TabChangedState(tabIndex: event.tabIndex));
      }
    });
  }
}
