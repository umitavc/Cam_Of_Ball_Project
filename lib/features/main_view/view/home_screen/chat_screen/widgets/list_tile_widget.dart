import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 42,
        width: 42,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                'assets/png/avatar.png',
              ),
            ),
            Positioned(
              bottom: 0,
              right: 4,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(color: AppColors.greenActiveColor, borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
      title: Text('Denis Stleele', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
      subtitle: Text('Hey, how’s life going.', style: AppTextStyles.greyTextStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w400)),
      trailing: Text('9:27 AM', style: AppTextStyles.greyTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400)),
    );
  }
}
