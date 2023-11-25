import 'package:bloc/bloc.dart';

part 'bottom_nabigator_bar_event.dart';
part 'battom_navigator_bar_state.dart';

class HomeScreenBlocBloc extends Bloc<HomeScreenBlocEvent, HomeScreenBlocState> {
  HomeScreenBlocBloc() : super(HomeScreenBlocInitial(tabIndex: 0)) {
    on<HomeScreenBlocEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(HomeScreenBlocInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
