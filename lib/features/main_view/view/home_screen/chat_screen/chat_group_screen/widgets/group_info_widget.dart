import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GroupInfoWidget extends StatelessWidget {
  const GroupInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: SizedBox(
        width: context.width,
        child: Column(
          children: [
            SizedBox(
              width: 115,
              height: 115,
              child: Image.asset(
                'assets/svg/shop_screen/team_logo.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text('Group Name', style: AppTextStyles.subTitleStyle.copyWith(fontWeight: FontWeight.w600)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/profil_screen/location.svg',
                  colorFilter: const ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
                ),
                SizedBox(
                  width: 300,
                  child: Text('Istanbul, Umraniye, more.sssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', style: AppTextStyles.subTitleStyle.copyWith(fontSize: 14), maxLines: 1, overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
