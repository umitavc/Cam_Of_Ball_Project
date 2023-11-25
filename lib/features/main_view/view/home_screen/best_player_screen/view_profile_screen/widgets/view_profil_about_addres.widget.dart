import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class ViewProfilAboutAddresWidget extends StatelessWidget {
  const ViewProfilAboutAddresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, ),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Weight',
                    style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Height',
                      style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    'Adress',
                    style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.only(right: 35, top: 30),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '179 sm',
                    style: AppTextStyles.forgotTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      '80kg',
                      style: AppTextStyles.forgotTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text(
                    'Miami, California (California 08:00-21:00',
                    style: AppTextStyles.forgotTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
