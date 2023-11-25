import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class MembersWidget extends StatelessWidget {
  const MembersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemCount: 15,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: SizedBox(
              height: 42,
              width: 42,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/png/avatar.png'),
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
            title: Text('umit', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
            trailing: Text('FORVET', style: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400))
          );
        },
      ),
    );
  }
}