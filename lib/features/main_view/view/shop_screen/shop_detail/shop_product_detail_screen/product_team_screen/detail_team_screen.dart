import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/widgets/product_team/team_product_card.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/widgets/product_team/team_text_component.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/widgets/team_widget.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/widgets/slider_widget.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/features/utils/widgets/search_widget.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class DetailTeamScreen extends StatelessWidget {
  const DetailTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                title: 'About Team',
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: TeamWidget(),
                      ),
                      const TeamTexComponent(),
                      SearchWidget(
                        title: 'Search in store',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: AspectRatio(
                          aspectRatio: 10/3.5,
                          child: SliderWidget(
                            imagePath: 'assets/png/team.png',
                          ),
                        ),
                      ),
                      const TeamProductCard(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                title: 'Filter',
                                backgroundColor: AppColors.whiteColor,
                                border: true,
                                borderR: true,
                                textColor: AppColors.secondaryColor,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: CustomButton(
                                title: 'Follow',
                                backgroundColor: AppColors.secondaryColor,
                                border: true,
                                borderR: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
