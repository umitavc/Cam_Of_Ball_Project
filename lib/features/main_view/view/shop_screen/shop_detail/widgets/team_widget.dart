import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeamWidget extends StatelessWidget {
  const TeamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/svg/shop_screen/team_logo.png'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Arsenal Team',
                      style: AppTextStyles.blackSubTextStyle,
                    ),
                    Row(
                      children: [
                        Text('Official Shop', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 12)),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset('assets/svg/shop_screen/shield_done.svg'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SvgPicture.asset('assets/svg/shop_screen/right_arrow.svg'),
        ],
      ),
    );
  }
}
