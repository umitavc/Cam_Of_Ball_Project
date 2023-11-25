import 'package:cam_of_ball/features/utils/dialogs/custom_dialog.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RankingWidget extends StatefulWidget {
  const RankingWidget({super.key});

  @override
  _RankingWidgetState createState() => _RankingWidgetState();
}

final List<String> filterTexts = ['Most popular', 'New in', 'Price (low to high)', 'Price (high to low)',];

class _RankingWidgetState extends State<RankingWidget> {
  Color container1Color = Colors.transparent;

  void changeColors(int index) {
    setState(() {
      container1Color = AppColors.secondaryColor;
    });

    // ignore: inference_failure_on_function_invocation
    AppDialogs().showCustomDialog(
      context,
      title: 'Sırala',
      nextRouteButtonText: 'Apply',
      subtitles: [
        for (final String text in filterTexts)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SvgPicture.asset('assets/svg/shop_screen/tick_square.svg'),
            ],
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeColors(0);
      },
      child: Container(
        height: 73,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: container1Color,
              width: 2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/shop_screen/arrow-swap.svg'),
            const Text('Sırala', style: AppTextStyles.subTextStyle),
          ],
        ),
      ),
    );
  }
}
