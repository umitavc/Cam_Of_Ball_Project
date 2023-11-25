import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddCartContainer extends StatelessWidget {
   AddCartContainer({super.key,this.title='' ,this.border=false, this.onTap,});
  String title;
  bool border;
   final VoidCallback? onTap;
  
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          color:AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          border: border ?Border.all(color: AppColors.secondaryColor):null,
          
        ),
        child: Center(child: Text(title,style: AppTextStyles.blackSubTextStyle ,)),
      ),
    );
  }
}
