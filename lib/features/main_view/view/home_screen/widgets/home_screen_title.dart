import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenTitle extends StatelessWidget {
  const HomeScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey Jane,',
              style: AppTextStyles.textStyle,
            ),
            Text(
              'Welcome Back!',
              style: AppTextStyles.subTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                context.router.push(const NotificationRoute());
              },
              child: SvgPicture.asset('assets/svg/home_screen/bottom_navigator_bar/notification_icon.svg', colorFilter: const ColorFilter.mode(AppColors.secondaryColor, BlendMode.srcIn)),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                context.router.push(const ChatRoute());
              },
              child: SvgPicture.asset(
                'assets/svg/home_screen/home_screen/message.svg',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
