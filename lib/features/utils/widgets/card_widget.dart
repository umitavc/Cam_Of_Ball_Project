import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: SvgPicture.asset('assets/svg/shop_screen/heart.svg')),
                Expanded(flex: 4, child: Center(child: Image.asset('assets/png/product.png'))),
                Expanded(child: Text('Arsenal uniform', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400))),
                Expanded(child: Text('90£', style: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w700))),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/shop_screen/star.svg'),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, right: 10),
                            child: Text('4.6', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400)),
                          ),
                          Text('846 View', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SvgPicture.asset('assets/svg/shop_screen/menu-dots-vertical.svg'),
                    ],
                  ),
                ),
              ],
            ),
          
        );
  }
}