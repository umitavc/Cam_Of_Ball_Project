import 'package:cam_of_ball/features/utils/widgets/custom_icon_back_button.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  ScreenTitle({super.key, required this.title, this.child,this.isActive = false});

  String title;
  Widget? child;
  bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          if (isActive) const SizedBox() else CustomIconBackButton(
            
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                title,
                style: AppTextStyles.blackTextStyle,
              ),
            ),
          ),
          SizedBox(
            child: child,
          ),
        ],
      ),
    );
  }
}
