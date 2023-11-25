import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilScreenButton extends StatelessWidget {
  ProfilScreenButton({required this.leadingIconPath, super.key, this.text = '', this.iconColor = false, required this.onTap});

  String text;
  String leadingIconPath;
  bool iconColor;
   final VoidCallback onTap;
 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(leadingIconPath), // Leading icon or image
      title: Text(text,style: TextStyle(color: iconColor ? AppColors.iconRedColor: AppColors.textColor),), // Title
      trailing: SvgPicture.asset('assets/svg/profil_screen/arrow-left.svg', colorFilter: iconColor ? const ColorFilter.mode(AppColors.iconRedColor, BlendMode.srcIn) : const ColorFilter.mode(AppColors.textColor, BlendMode.srcIn)), // Trailing icon
      onTap: onTap
    );
  }
}
 