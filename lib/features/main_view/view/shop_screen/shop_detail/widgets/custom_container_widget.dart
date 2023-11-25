import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  CustomContainerWidget({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 55,
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.secondaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
