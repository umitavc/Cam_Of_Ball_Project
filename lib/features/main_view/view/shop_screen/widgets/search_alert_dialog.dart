import 'package:cam_of_ball/features/utils/dialogs/custom_dialog.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterContainer extends StatelessWidget {
  FilterContainer({Key? key, required this.title, required this.filterTexts}) : super(key: key);
  String title;

  final List<String> filterTexts;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppDialogs.instance.showCustomDialog<void>(
          context,
          title: 'Sırala',
          nextRouteButtonText: 'Apply',
          subtitles: [
            for (final String text in filterTexts)
              Column(
                children: [
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
              ),
          ],
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          width: 85,
          height: 32,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: AppTextStyles.blueSubTextStyle.copyWith(fontSize: 12),
              ),
              SvgPicture.asset('assets/svg/shop_screen/arrow_down.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
