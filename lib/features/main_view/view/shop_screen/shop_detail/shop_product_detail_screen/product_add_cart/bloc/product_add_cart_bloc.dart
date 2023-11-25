import 'package:bloc/bloc.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/bloc/product_add_cart_state.dart';

part 'product_add_cart_event.dart';

class ProductAddCartBloc extends Bloc<ProductAddCartEvent, ProductAddCartState> {
  ProductAddCartBloc() : super(ProductAddCartState(count: 0)) {
    on<ProductAddCartEvent>((event, emit) {
      if (event is Increment) {
        emit(ProductAddCartState(count: state.count + 1));
      } else if (event is Deincrement) {
        if (state.count >0) {
           emit(ProductAddCartState(count: state.count - 1));
        }
       
      }
    });
  }
}
