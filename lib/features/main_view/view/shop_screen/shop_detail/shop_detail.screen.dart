import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/add_products_cart_screen.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/widgets/product_detail_widget.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/widgets/recommended_component.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/widgets/reviews_widget.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/widgets/size_component.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/widgets/team_widget.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/widgets/text_content_widget.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class ShopDetailScreen extends StatelessWidget {
  const ShopDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                title: 'About Product',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/svg/shop_screen/redo.svg'),
                    const SizedBox(
                      width: 25,
                    ),
                    SvgPicture.asset('assets/svg/shop_screen/shopping-cart.svg'),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const ProductDetailWidget(),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              TextContentWidget(),
                            ],
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: () {
                            context.router.push(const DetailTeamRoute());
                          },
                          child: const TeamWidget(),
                        ),
                        Column(
                          children: [
                            const SizeComponent(),
                            const ReviwesWidget(),
                            const RecommendedComponent(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CustomButton(
                                      title: 'Save',
                                      backgroundColor: AppColors.secondaryColor,
                                      borderR: true,
                                      textColor: AppColors.whiteColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Expanded(child: AddProductCartScreen()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
