import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FootballCardTeamWidget extends StatelessWidget {
  const FootballCardTeamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '29 y.o',
                        style: AppTextStyles.blackTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Age',
                        style: AppTextStyles.textFieldStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '182 cm',
                        style: AppTextStyles.blackTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Height',
                        style: AppTextStyles.textFieldStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '90 kg',
                        style: AppTextStyles.blackTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Weight',
                        style: AppTextStyles.textFieldStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Right',
                        style: AppTextStyles.blackTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Foot',
                        style: AppTextStyles.textFieldStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        Text(
                          'Alex’s Teams:',
                          style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 112,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/png/images/team_icon.png'),
                                Text(
                                  'Lions Team',
                                  style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Position:',
                                    style: AppTextStyles.textFieldStyle.copyWith(fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Defense',
                                    style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: SvgPicture.asset('assets/svg/profil_screen/people.svg'),
                                ),
                                Text(
                                  '12 players',
                                  style: AppTextStyles.textFieldStyle.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        width: 112,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/png/images/team_icon.png'),
                                Text(
                                  'Tigers Team',
                                  style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Position:',
                                    style: AppTextStyles.textFieldStyle.copyWith(fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Defense',
                                    style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: SvgPicture.asset('assets/svg/profil_screen/people.svg'),
                                ),
                                Text(
                                  '12 players',
                                  style: AppTextStyles.textFieldStyle.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
