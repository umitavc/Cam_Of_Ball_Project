import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/bloc/detail_product_screen_event.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/bloc/detail_product_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DetailProductScreenBloc extends Bloc<DetailReviewEvent, DetailReviewState> {
  DetailProductScreenBloc() : super(ShowLessReviewsState()) {
    on<DetailReviewEvent>((event, emit) {
      if (event is ShowMoreReviewsEvent) {
        emit(ShowMoreReviewsState());
      } else if (event is ShowLessReviewsEvent) {
        emit(ShowLessReviewsState());
      }
    });

     
  }
}
