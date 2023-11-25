import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/widgets/subtitles_widget.dart';
import 'package:cam_of_ball/features/utils/dialogs/custom_dialog.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
@RoutePage()
class AddProductCartScreen extends StatelessWidget {
  const AddProductCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppDialogs.instance.showCustomDialog<void>(
          context,
          title: 'Add to cart',
          nextRouteButtonText: 'Add To Cart',
          subtitles: [
            SubTitlesWidget(),
          ],
          isActive: true,
          onPressedButton: () {
            context.router.push(const SinglePaymentRoute());
          },
        );
      },
      child: CustomButton(
        title: 'Add To Cart',
        backgroundColor: AppColors.whiteColor,
        border: true,
        borderR: true,
        
      ),
    );
  }
}
