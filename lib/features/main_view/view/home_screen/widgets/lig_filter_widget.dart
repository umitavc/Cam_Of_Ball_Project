import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class LigFilterWidget extends StatelessWidget {
  const LigFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 91,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: SizedBox(
              width: 79,
              child: Column(
                children: [
                  SizedBox(
                    width: 55,
                    height: 55,
                    child: Image.asset('assets/png/lig_logo.png', fit: BoxFit.cover),
                  ),
                  Text(
                    'Premier League',
                    style: AppTextStyles.greenTextStyle.copyWith(color: const Color(0xff292D32)),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
