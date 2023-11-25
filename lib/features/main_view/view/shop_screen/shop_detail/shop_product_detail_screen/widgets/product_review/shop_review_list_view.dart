import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/bloc/detail_product_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/bloc/detail_product_screen_state.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/widgets/product_review/product_review_component.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/widgets/product_review/product_review_text_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopReviewListView extends StatelessWidget {
  const ShopReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocBuilder<DetailProductScreenBloc, DetailReviewState>(
          builder: (context, state) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state is ShowMoreReviewsState ? 8 : 3, // 3 veya 5
              itemBuilder: (context, index) {
                return const ProductReviewComponent();
              },
            );
          },
        ),
        const ProductReviewTextComponent(),
      ],
    );
  }
}
