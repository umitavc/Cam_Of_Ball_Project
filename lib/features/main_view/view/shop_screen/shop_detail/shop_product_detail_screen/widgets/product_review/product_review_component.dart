import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductReviewComponent extends StatelessWidget {
  const ProductReviewComponent({super.key});

  @override
  Widget build(BuildContext context) {
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
                        Text(
                          'James',
                          style: AppTextStyles.blackSubTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
              padding: const EdgeInsets.only(left: 50, right: 16),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
                style: AppTextStyles.blackSubTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
