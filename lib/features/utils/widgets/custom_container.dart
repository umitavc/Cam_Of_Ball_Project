// ignore: must_be_immutable
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    this.title = '',
    this.onTap,
    this.backgroundColor = AppColors.whiteColor,
    this.textcolor = AppColors.whiteColor,
    this.height = 30,
    this.borderR = 10,
  });
  String title;

  final VoidCallback? onTap;

  Color backgroundColor;
  double height;
  double borderR;
  
  Color textcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderR),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.secondaryColor),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: AppTextStyles.blueSubTextStyle.copyWith(color: textcolor),
          ),
        ),),
      ),
    );
  }
}
