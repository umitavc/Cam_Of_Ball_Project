import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/widgets/best_player_card_widget.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class BestPlayerView extends StatelessWidget {
  const BestPlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              const Text(
                'The best player of the week',
                style: AppTextStyles.blackTextStyle,
              ),
              InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    context.router.push( BestPlayerRoute());
                  },
                  child: const Text('See All', style: AppTextStyles.blueSubTextStyle)),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.only(right: 10),
                child: BestPlayerCardWidget(),
              );
            },
          ),
        ),
      ],
    );
  }
}
