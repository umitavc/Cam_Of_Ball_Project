import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BestPlayerScreen extends StatelessWidget {
  BestPlayerScreen({super.key});

  final List<String> filter = ['Best Shoot', 'Best Pass', 'Best save', 'Best Shoot', 'Best Shoot'];

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
              // SizedBox(
              //   height: 30,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     itemCount: 5,
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.only(right: 10),
              //         child: PlayerFilterContainer(
              //           title: filter[index],
              //           onTap: () {},
              //         ),
              //       );
              //     },
              //   ),
              // ),
              // Expanded(
              //   child: GridView.builder(
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       childAspectRatio: .6
                    
                    
              //     ),
              //     itemCount: 12,
              //     itemBuilder: (context, index) {
              //       return  BestPlayerCardWidget();
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
