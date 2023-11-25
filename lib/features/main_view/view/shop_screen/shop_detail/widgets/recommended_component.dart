import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:cam_of_ball/features/utils/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class RecommendedComponent extends StatelessWidget {
  const RecommendedComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recommended', style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
              Text('See All', style: AppTextStyles.subTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500)),
            
            ],
          ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const CardWidget();
              },
            ),
        ],
      ),
    );
  }
}
