import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/view/profil_screen/widgets/profil_screen_button.dart';
import 'package:flutter/material.dart';

class ProfilScreenAbout extends StatelessWidget {
  const ProfilScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ProfilScreenButton(text: 'Football Card', leadingIconPath: 'assets/svg/profil_screen/personalcard.svg',onTap: () {
              context.router.push(const FootballCardRoute());
            },),
            ProfilScreenButton(text: 'Matches', leadingIconPath: 'assets/svg/profil_screen/people.svg', onTap: () { 
               
             },),
            ProfilScreenButton(text: 'Payment', leadingIconPath: 'assets/svg/profil_screen/card-pos.svg', onTap: () { 
              context.router.push(const PaymentRoute());
             },),
            ProfilScreenButton(text: 'Orders', leadingIconPath: 'assets/svg/profil_screen/shopping-cart.svg', onTap: () {  },),
            ProfilScreenButton(text: 'Location', leadingIconPath: 'assets/svg/profil_screen/location.svg', onTap: () { 
              context.router.push(const LocationRoute());
             },),
            ProfilScreenButton(text: 'Settings', leadingIconPath: 'assets/svg/profil_screen/setting-2.svg', onTap: () { 
              context.router.push(const SettingsRoute());
             },),
            ProfilScreenButton(text: 'Change Password', leadingIconPath: 'assets/svg/profil_screen/lock-circle.svg', onTap: () {  
              context.router.push(const ChangePasswordRoute());
            },),
            ProfilScreenButton(text: 'Log Out', leadingIconPath: 'assets/svg/profil_screen/login.svg', iconColor: true, onTap: () {  },),
          ],
        ),
      ],
    );
  }
}
