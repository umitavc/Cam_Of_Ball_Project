import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class FootballCard extends StatelessWidget {
  const FootballCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        debugPrint(constraints.biggest.toString());
        debugPrint(MediaQuery.of(context).size.height.toString());
        return Stack(
          fit: StackFit.expand,
          children: [
            FractionallySizedBox(
              heightFactor: .9,
              child: SvgPicture.asset(
                'assets/svg/home_screen/home_screen/card.svg',
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Container(
                          height: 108,
                          width: 108,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                          child: Image.asset(
                            'assets/png/avatar.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'James Flek',
                      style: AppTextStyles.blackTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Forward',
                      style: AppTextStyles.blackTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Center(
                              child: SizedBox(
                                //color: Colors.amber,
                                width: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Column(
                                      children: [
                                        Text(
                                          '84',
                                          style: AppTextStyles.cardTitleStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            '74',
                                            style: AppTextStyles.cardTitleStyle,
                                          ),
                                        ),
                                        Text(
                                          '80',
                                          style: AppTextStyles.cardTitleStyle,
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            'PAC',
                                            style: AppTextStyles.cardTitleStyle,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            child: Text(
                                              'SHO',
                                              style: AppTextStyles.cardTitleStyle,
                                            ),
                                          ),
                                          Text(
                                            'PAS',
                                            style: AppTextStyles.cardTitleStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 92,
                                      width: 1.5,
                                      color: Colors.white,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            '84',
                                            style: AppTextStyles.cardTitleStyle,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            child: Text(
                                              '74',
                                              style: AppTextStyles.cardTitleStyle,
                                            ),
                                          ),
                                          Text(
                                            '80',
                                            style: AppTextStyles.cardTitleStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          'PAC',
                                          style: AppTextStyles.cardTitleStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 16),
                                          child: Text(
                                            'SHO',
                                            style: AppTextStyles.cardTitleStyle,
                                          ),
                                        ),
                                        Text(
                                          'PAS',
                                          style: AppTextStyles.cardTitleStyle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
