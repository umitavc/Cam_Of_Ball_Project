import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({required this.title, required this.backgroundColor,
   super.key, 
   this.icon = false, 
   this.iconPath = '',
   this.textColor, 
   this.border=false,
   this.borderR=false,
    this.onTap,
   });

  String title;
  Color backgroundColor;
  bool icon;
  String iconPath;
  Color? textColor;
  bool border;
  bool borderR;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap :onTap,
      child: Container(
        height: context.height * .07,
        width: context.width * .92,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:  borderR? BorderRadius.circular(10) : BorderRadius.circular(20),
          border: border ?Border.all(color: AppColors.secondaryColor) :null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon) SvgPicture.asset(iconPath),
            if (icon) const SizedBox(width: 40),
            Text(
              title,
              style:  TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
