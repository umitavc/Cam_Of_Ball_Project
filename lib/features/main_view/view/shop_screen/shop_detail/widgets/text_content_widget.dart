import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class TextContentWidget extends StatelessWidget {
  const TextContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Arsenal uniform', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w700)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('90£', style: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w700)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/svg/shop_screen/star.svg'),
                Padding(
                  padding: const EdgeInsets.only(left: 4, right: 10),
                  child: Text('4.6', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                Text('846 Reviews', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
            const Text(
              'Stock : 250',
              style: AppTextStyles.greenTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
