import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class LiveMatchScreen extends StatelessWidget {
  const LiveMatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          SizedBox.expand(
           
            child: Image.asset(
              'assets/png/live_match.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 23,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xffEA2F27),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'LIVE',
                      style: AppTextStyles.subTitleStyle.copyWith(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 23,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xff1027E5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svg/home_screen/home_screen/eyes.svg'),
                          Text(
                            '123',
                            style: AppTextStyles.subTitleStyle.copyWith(fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: () {
                        context.router.pop();
                      },
                      child: SvgPicture.asset('assets/svg/home_screen/home_screen/close.svg'),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
