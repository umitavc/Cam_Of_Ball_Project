import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height * 0.42,
      decoration: const BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.only(top: 46, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lorem Ipsum Lorem\nDolar',
              style: AppTextStyles.titleStyle,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 54, right: 32),
              child: Text(
                'Amet minim mollit non deserunt  es sit  aliqua dolor do amet sint velit ',
                style: AppTextStyles.subTitleStyle,
              ),
            ),
            InkWell(
              onTap: () {
                context.router.push(const SingInRoute());
              },
              child: CustomButton(
                title: 'Get Started',
                backgroundColor: Colors.white,
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
