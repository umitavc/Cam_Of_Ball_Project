import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenTitle(
                title: 'Payment',
              ),

              Text('Your Card:',
                        style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16),),
              Expanded(
                flex: 9,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 72,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(flex: 2, child: SvgPicture.asset('assets/svg/profil_screen/master_card.svg')),
                              Expanded(
                                flex: 5,
                                child: Text(
                                  '4532 - 77** - **** - 3255',
                                  style: AppTextStyles.blackTextStyle.copyWith(fontSize: 15),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: InkWell(
                                  onTap: () {},
                                  child: SvgPicture.asset('assets/svg/profil_screen/trash.svg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: InkWell(
                  onTap: () {
                    context.router.push(const PaymentRouteDetail());
                  },
                  child: CustomButton(
                    title: 'Ad New Card',
                    textColor: Colors.white,
                    backgroundColor: AppColors.secondaryColor,
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
