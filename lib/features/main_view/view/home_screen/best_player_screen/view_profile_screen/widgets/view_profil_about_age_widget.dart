import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ViewProfilAgeWidget extends StatelessWidget {
  const ViewProfilAgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: SvgPicture.asset('assets/svg/home_screen/home_screen/personalcard.svg'),
                    ),
                    Text(
                      'Age',
                      style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    '25 Year',
                    style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  'Oktober 13, 1998',
                  style: AppTextStyles.forgotTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: SvgPicture.asset('assets/svg/profil_screen/people.svg', colorFilter: const ColorFilter.mode(AppColors.secondaryColor, BlendMode.srcIn)),
                    ),
                    Text(
                      'Position',
                      style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            'Primary',
                            style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          'Right winger',
                          style: AppTextStyles.forgotTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            'Other',
                            style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          'Forward, Striker',
                          style: AppTextStyles.forgotTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
