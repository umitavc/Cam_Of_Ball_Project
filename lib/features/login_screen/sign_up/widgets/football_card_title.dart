import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FootballCardTitle extends StatelessWidget {
  const FootballCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/svg/register/football_card.svg'),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Lorem ipsum dolor sit amet,elit ',
              style:AppTextStyles.textFieldStyle,
            ),
          ),
        ],
      ),
    );
  }
}
