import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/widgets/best_player_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/live_match_all_screen/widgets/go_shopping_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/widgets/custom_container_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/widgets/home_screen_title.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/widgets/liked_video_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/widgets/live_match_button.dart';
import 'package:cam_of_ball/features/utils/widgets/search_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            const HomeScreenTitle(),
            SearchWidget(
              title: 'Search',
            ),
            Expanded(
              child: ListView(
                children: [
                  //const LigFilterWidget(),
                  Row(
                    children: [
                      LiveMatchButton(
                        onTap: () {
                          context.router.push(LiveMatchAllRoute());
                        },
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Column(
                            children: [
                              MatchResultButtonWidget(
                                text: 'Voting for players',
                                onTap: () {},
                              ),
                              MatchResultButtonWidget(
                                isText: true,
                                text: 'Match results',
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const LikedVideoView(),
                  const GoShoppingWidget(),
                  const BestPlayerView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
