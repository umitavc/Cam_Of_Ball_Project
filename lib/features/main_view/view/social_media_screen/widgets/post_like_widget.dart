import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostLikeWidget extends StatelessWidget {
  const PostLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SvgPicture.asset('assets/svg/home_screen/home_screen/like.svg'),
              ),
              SvgPicture.asset('assets/svg/home_screen/home_screen/comment.svg'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Text(
            '120 Likes',
            style: AppTextStyles.blackTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
        ),
        Text(
          'Lorem ipsum dolor sit amet consectetur. Fringilla ultrices gravida egestas mauris arcu a.',
          style: AppTextStyles.textStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
