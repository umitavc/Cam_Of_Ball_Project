
import 'package:cam_of_ball/features/utils/widgets/custom_container.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_icon_back_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilScreenTile extends StatelessWidget {
  ProfilScreenTile({super.key, this.isAvctive = true, this.buttonText = ''});

  bool isAvctive;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25,
              ),
              child: Row(
                children: [
                 if (isAvctive)  CustomIconBackButton(iconColor: AppColors.whiteColor)  else  const SizedBox(),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      'assets/png/avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'James Flek',
                        style: AppTextStyles.subTitleStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Forward',
                        style: AppTextStyles.subTitleStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                        child: Image.asset(
                          'assets/png/youtube_icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                        child: Image.asset(
                          'assets/png/youtube_icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '1.208',
                          style: AppTextStyles.cardTitleStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        'Follower',
                        style: AppTextStyles.cardTitleStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '20',
                            style: AppTextStyles.cardTitleStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Text(
                          'Following',
                          style: AppTextStyles.cardTitleStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            '726',
                            style: AppTextStyles.cardTitleStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Text(
                          'Posts',
                          style: AppTextStyles.cardTitleStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: isAvctive? CustomContainer(title: buttonText,height: 40,textcolor: AppColors.blackColor,borderR: 50,) :const SizedBox()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
