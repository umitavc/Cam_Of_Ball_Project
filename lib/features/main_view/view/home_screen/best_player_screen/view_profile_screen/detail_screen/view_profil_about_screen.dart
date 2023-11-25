import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/widgets/view_profil_about_addres.widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/widgets/view_profil_about_age_widget.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/best_player_screen/view_profile_screen/widgets/view_profil_about_button_widget.dart';
import 'package:flutter/material.dart';

class ViewProfilAboutScreen extends StatelessWidget {
  const ViewProfilAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        children: [
          Expanded(child: ViewProfilAgeWidget()),
          Expanded(child: ViewProfilAboutAddresWidget()),
          Expanded(child: ViewProfilAboutButtonWidget()),
        ],
      ),
    );
  }
}
