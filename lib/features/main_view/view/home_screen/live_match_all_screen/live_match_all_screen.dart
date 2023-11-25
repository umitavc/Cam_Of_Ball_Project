import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/live_match_all_screen/widgets/match_card_widget.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/features/utils/widgets/search_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LiveMatchAllScreen extends StatelessWidget {
  LiveMatchAllScreen({super.key});

  final List<String> filter = ['Premier League', 'La Liga', 'Bundesliga', 'Serie A', 'Trendyol Super Lig'];
  final List<String> teamOneName = ['Galatasaray', 'Galatasaray', 'Galatasaray', 'Galatasaray', 'Galatasaray', 'Bayern Münih', 'Galatasaray', 'Galatasaray', 'Galatasaray', 'Glatasaray'];
  final List<String> teamTwoName = ['Bayern Münih', 'Galatasaray', 'Galatasaray', 'Galatasaray', 'Galatasaray', 'Bayern Münih', 'Galatasaray', 'Galatasaray', 'Galatasaray', 'Glatasaray'];
  final List<String> date = ['19:45', '19:45', '19:45', '19:45', '19:45', '19:45', '19:45', '19:45', '19:45', '19:45'];
  final List<String> stadName = ['Nef Park', 'Anfield', 'Camp Nou', 'Wembley Stadyumu', 'Signal Iduna Park', 'Nef Park', 'Anfield', 'Camp Nou', 'Wembley Stadyumu', 'Signal Iduna Park'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                title: 'Match records',
              ),
              SearchWidget(
                title: 'Search',
              ),
              // SizedBox(
              //   height: 30,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     itemCount: 5,
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.only(right: 10),
              //         child: CustomContainer(
              //           textcolor: AppColors.secondaryColor,
              //           title: filter[index],
              //           onTap: () {},
              //         ),
              //       );
              //     },
              //   ),
              // ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 4.5,
                      // mainAxisSpacing: 10,
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          MatchCardWidget(
                            onTap: () {
                              context.router.push(const LiveMatchRoute());
                            },
                            teamOne: teamOneName[index],
                            teamTwo: teamTwoName[index],
                            date: date[index],
                            stadName: stadName[index],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
