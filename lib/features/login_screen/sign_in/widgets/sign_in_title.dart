import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingInTitle extends StatelessWidget {
  const SingInTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/svg/login/login_title.svg'),
          const Text(
            'Lorem ipsum dolor sit amet,elit ',
            style:AppTextStyles.textFieldStyle,
          ),
        ],
      ),
    );
  }
}
