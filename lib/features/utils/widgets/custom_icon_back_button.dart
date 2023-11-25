import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: must_be_immutable
class CustomIconBackButton extends StatelessWidget {
  CustomIconBackButton({
    super.key,
    this.backgroundColor = Colors.transparent,
    this.iconColor= AppColors.blackColor,
  });

  Color backgroundColor; 
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        context.popRoute();
      },
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: backgroundColor, 
        ),
        child: SvgPicture.asset('assets/svg/icon/arrow-left.svg', colorFilter: (backgroundColor == Colors.transparent || backgroundColor == Colors.white) ?  ColorFilter.mode(iconColor, BlendMode.srcIn) :  ColorFilter.mode(iconColor, BlendMode.srcIn)),
      ),
    );
  }
}
