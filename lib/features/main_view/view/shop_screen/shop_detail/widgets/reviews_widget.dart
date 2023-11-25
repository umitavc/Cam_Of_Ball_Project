import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReviwesWidget extends StatelessWidget {
  const ReviwesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Reviews (86)', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
            Row(
              children: [
                SvgPicture.asset('assets/svg/shop_screen/star.svg'),
                Padding(
                  padding: const EdgeInsets.only(left: 4, right: 10),
                  child: Text('4.6', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ],
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 110,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  'assets/png/avatar.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text('James', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/svg/shop_screen/star.svg'),
                                    SvgPicture.asset('assets/svg/shop_screen/star.svg'),
                                    SvgPicture.asset('assets/svg/shop_screen/star.svg'),
                                    SvgPicture.asset('assets/svg/shop_screen/star.svg'),
                                    SvgPicture.asset('assets/svg/shop_screen/star.svg'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '1 month ago',
                          style: AppTextStyles.textFieldStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                        maxLines: 3,
                        overflow:TextOverflow.ellipsis ,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        CustomButton(
          title: 'See All',
          backgroundColor: AppColors.whiteColor,
          border: true,
          borderR: true,
          onTap: () {
             context.router.push(const DetailReviewRoute());
          },
          )
       ,
      ],
    );
  }
}
