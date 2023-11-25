import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/widgets/product_review/shop_review_list_view.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetailReviewScreen extends StatefulWidget {
  const DetailReviewScreen({super.key});

  @override
  _DetailReviewScreenState createState() => _DetailReviewScreenState();
}

class _DetailReviewScreenState extends State<DetailReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ScreenTitle(
                title: 'Reviews(32)',
              ),
              const Expanded(
                child: ShopReviewListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
