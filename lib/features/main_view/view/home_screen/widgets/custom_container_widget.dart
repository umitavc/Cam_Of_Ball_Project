import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MatchResultButtonWidget extends StatelessWidget {
  MatchResultButtonWidget({super.key, required this.onTap, this.text = '', this.isText = false});
  final VoidCallback onTap;
  String text;
  bool isText;

  List<String> randomImages = [
    'assets/png/team_logo.png',
    'assets/png/team_logo.png',
    'assets/png/team_logo.png',
    'assets/png/team_logo.png',
    'assets/png/team_logo.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: 89,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff2D2C2C),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (isText)
                      Text(
                        text,
                        style: AppTextStyles.cardTitleStyle.copyWith(fontSize: 12),
                      )
                    else
                      SizedBox(
                        width: 65,
                        child: Text(
                          text,
                          style: AppTextStyles.cardSubTitleStyle.copyWith(fontSize: 12),
                          maxLines: 2,
                        ),
                      ),
                    Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.whiteColor,
                        ),
                        child: SvgPicture.asset('assets/svg/home_screen/home_screen/arrow-left.svg')),
                  ],
                ),
              ),
              Row(
                children: [
                  for (int i = 0; i < randomImages.length; i++)
                    Align(
                      widthFactor: 0.7,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          randomImages[i],
                          width: 27,
                          height: 27,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
