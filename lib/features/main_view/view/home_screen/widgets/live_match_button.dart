import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LiveMatchButton extends StatelessWidget {
  LiveMatchButton({super.key,  this.onTap});

   final VoidCallback? onTap;

  List<String> randomImages = [
    'assets/png/team_logo.png',
    'assets/png/team_logo.png',
    'assets/png/team_logo.png',
    'assets/png/team_logo.png',
    'assets/png/team_logo.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Container(
          height: 185,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF3F3F3),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: SvgPicture.asset('assets/svg/home_screen/home_screen/arrow_right.svg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Live Match',
                        style: AppTextStyles.blackTextStyle.copyWith(fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Regular championship\nEast / west / Play off',
                          style: AppTextStyles.blackTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
