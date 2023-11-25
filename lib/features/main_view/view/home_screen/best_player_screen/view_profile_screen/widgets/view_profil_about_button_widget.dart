import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ViewProfilAboutButtonWidget extends StatelessWidget {
  const ViewProfilAboutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            title: 'Message',
            backgroundColor: AppColors.whiteColor,
            border: true,
            borderR: true,
            textColor: AppColors.secondaryColor,
            onTap: () {
              context.router.push(const ChatRoute());
            },
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: CustomButton(
            title: 'Rate',
            backgroundColor: AppColors.secondaryColor,
            textColor: AppColors.whiteColor,
            borderR: true,
            onTap: () {
              context.router.push(const RatePlayerRoute());
            },
          ),
        ),
      ],
    );
  }
}
