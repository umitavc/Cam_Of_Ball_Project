import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class RatePlayerDetailScreen extends StatelessWidget {
  const RatePlayerDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                title: 'Rate Player',
              ),
              Expanded(flex: 4, child: Center(child: SvgPicture.asset('assets/svg/home_screen/home_screen/rate_success.svg'))),
              Expanded(
                  child: Text(
                'Successfully Rated',
                style: AppTextStyles.titleStyle.copyWith(color: const Color(0xff434348)),
              ),),
              Expanded(
                  flex: 2,
                  child: SizedBox(
                      child: Text(
                    'Now you can go back and choose\n positions for other members',
                    style: AppTextStyles.textStyle.copyWith(color: const Color(0xff7E7E7E)),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),),),
              Padding(
                padding: const EdgeInsets.only(bottom: 120),
                child: CustomButton(
                
                  title: 'Done',
                  backgroundColor: AppColors.secondaryColor,
                  textColor: AppColors.whiteColor,
                  onTap: () {
                    context.router.pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
