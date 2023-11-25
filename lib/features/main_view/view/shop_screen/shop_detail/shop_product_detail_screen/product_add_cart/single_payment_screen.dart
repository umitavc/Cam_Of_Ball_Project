import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/widgets/prodcut_paymet_card.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/widgets/single_payment_component.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SinglePaymentScreen extends StatelessWidget {
  const SinglePaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScreenTitle(
                  title: 'Payment',
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 18,
                  ),
                  child: SinglePaymentComponent(),
                ),
               ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                
                 return const Padding(
                   padding: EdgeInsets.symmetric(vertical: 10),
                   child: ProductPaymetCard(),
                 );
               },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
