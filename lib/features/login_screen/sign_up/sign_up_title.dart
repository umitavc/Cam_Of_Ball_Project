import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingUpTitle extends StatelessWidget {
  const SingUpTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/svg/register/sign_up.svg'),
          const Text(
            'Lorem ipsum dolor sit amet,elit ',
            style:AppTextStyles.textFieldStyle,
          ),
        ],
      ),
    );
  }
}
