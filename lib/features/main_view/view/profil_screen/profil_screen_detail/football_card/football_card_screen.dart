import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/football_card/widgets/footbal_card_team_widget.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/football_card/widgets/football_card.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/profil_screen_detail/football_card/widgets/football_card_export_widget.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_icon_back_button.dart';
import 'package:flutter/material.dart';
@RoutePage()
class FootballCardScreen extends StatelessWidget {
  const FootballCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(169, 252, 255, 0.38),
                  Color.fromRGBO(49, 43, 236, 0.84),
                ],
                begin: FractionalOffset(-0.2571, 0),
                end: FractionalOffset(1.1549, 0),
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 12,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconBackButton(backgroundColor: Colors.white,),
                      const FootballCardExportButton(),
                      
                    ],
                  ),
                ),
              ),
              const Expanded(flex: 44, child: FootballCard()),
              Expanded(
                flex: 44,
                child: Container(
                  width: context.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: const FootballCardTeamWidget(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
