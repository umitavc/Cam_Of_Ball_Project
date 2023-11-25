import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BestPlayerCardWidget extends StatelessWidget {
   BestPlayerCardWidget({super.key, this.height=0});
  double height;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Center(
        child: Stack(
          
          children: [
             FractionallySizedBox(
          heightFactor: 1,
          child: Center(
            child: SvgPicture.asset(
              'assets/svg/home_screen/home_screen/card.svg',fit: BoxFit.fill,
            ),
          ),
        ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10),
              child: Container(
                constraints: constraints * .8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                            child: Image.asset(
                              'assets/png/avatar.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'James Flek',
                            style: AppTextStyles.blackTextStyle.copyWith(fontSize: 8, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Forward',
                            style: AppTextStyles.blackTextStyle.copyWith(fontSize: 5, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  context.router.push(const RatePlayerRoute());
                                },
                                child: Container(
                                  height: 15,
                                  width: 37,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryColor,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Rate',
                                    style: AppTextStyles.cardSubTitleStyle.copyWith(fontSize: 5),
                                  ),),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  context.router.push(const ViewProfilRoute());
                                },
                                child: Container(
                                  height: 15,
                                  width: 41,
                                  decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(2)),
                                  child: Center(
                                      child: Text(
                                    'View profile',
                                    style: AppTextStyles.cardSubTitleStyle.copyWith(fontSize: 5, color: AppColors.secondaryColor),
                                  ),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            //color: Colors.amber,
                            width: 90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  children: [
                                    Text(
                                      '84',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                    Text(
                                      '74',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                    Text(
                                      '80',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                  ],
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      'PAC',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                    Text(
                                      'SHO',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                    Text(
                                      'PAS',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 40,
                                  width: 1,
                                  color: Colors.white,
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      '84',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                    Text(
                                      '74',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                    Text(
                                      '80',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                  ],
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      'PAC',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                    Text(
                                      'SHO',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                    Text(
                                      'PAS',
                                      style: AppTextStyles.cardSubTitleStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
