import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MatchCardWidget extends StatelessWidget {
  MatchCardWidget({super.key, this.teamOne = '', this.teamTwo = '', this.date = '', this.stadName = '',  this.onTap});

  String teamOne;
  String teamTwo;
  String date;
  String stadName = '';
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 90,
                  child: Text(
                    teamOne,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Image.asset('assets/png/team_logo.png'),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '4',
                          style: AppTextStyles.scoreTextStyle,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            ':',
                            style: AppTextStyles.scoreTextStyle,
                          ),
                        ),
                        Text(
                          '6',
                          style: AppTextStyles.scoreTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                      child: Center(
                        child: Text(
                          maxLines: 2,
                          date,
                          style: AppTextStyles.dateTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/png/team_logo.png'),
                SizedBox(
                  width: 100,
                  child: Text(
                    teamTwo,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(stadName, style: AppTextStyles.dateTextStyle),
            ),
          ],
        ),
      ),
    );
  }
}
