import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TeamTexComponent extends StatelessWidget {
  const TeamTexComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/svg/shop_screen/marker-time.svg'),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Miami, California (California 08:00-21:00)',
              style: AppTextStyles.blackSubTextStyle,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('İtems', style: AppTextStyles.forgotTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
        ),
        Text('150 İtems', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
