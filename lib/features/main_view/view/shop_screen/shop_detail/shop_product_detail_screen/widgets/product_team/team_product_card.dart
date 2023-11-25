import 'package:cam_of_ball/features/utils/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class TeamProductCard extends StatelessWidget {
  const TeamProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: CardWidget(),);
      },
    );
  }
}
