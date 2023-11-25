import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ProfilScreenFototballCard extends StatelessWidget {
  const ProfilScreenFototballCard({super.key});

  @override
  Widget build(BuildContext context) {
     return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                //minHeight: MediaQuery.of(context).size.height -60,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'Age',
                      maxLength: 25,
                      expands: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'Weight',
                      maxLength: 5,
                      expands: false,
                      textInputType: TextInputType.number,
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'Height',
                      maxLength: 25,
                      expands: false,
                      
                      textInputType: TextInputType.number,
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      isDropdown: true,
                      hintText: 'Foot',
                      
                      items: ['a', 'b', 'c'],
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      isDropdown: true,
                      hintText: 'Position',
                      items: const ['a', 'b'],
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      isDropdown: true,
                      hintText: 'Best Feature',
                      hintTextColor: const Color(0xff000000),
                      items: const ['a', 'b','d'],
                    ),
                  ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'Experiences',
                      maxLength: 25,
                      expands: false,
                      textInputType: TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: CustomButton(
                      title: 'Save Changes',
                       textColor:Colors.white,
                      backgroundColor: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    // ListView(
    //   children: [
    //     Column(
    //       children: [
    //         ProfilScreenButton(text: 'Football Card', leadingIconPath: 'assets/svg/profil_screen/personalcard.svg'),
    //         ProfilScreenButton(text: 'Matches', leadingIconPath: 'assets/svg/profil_screen/people.svg'),
    //         ProfilScreenButton(text: 'Payment', leadingIconPath: 'assets/svg/profil_screen/card-pos.svg'),
    //         ProfilScreenButton(text: 'Orders', leadingIconPath: 'assets/svg/profil_screen/shopping-cart.svg'),
    //         ProfilScreenButton(text: 'Location', leadingIconPath: 'assets/svg/profil_screen/location.svg'),
    //         ProfilScreenButton(text: 'Settings', leadingIconPath: 'assets/svg/profil_screen/setting-2.svg'),
    //         ProfilScreenButton(text: 'Change Password', leadingIconPath: 'assets/svg/profil_screen/lock-circle.svg'),
    //         ProfilScreenButton(text: 'Log Out', leadingIconPath: 'assets/svg/profil_screen/login.svg', iconColor: true),
    //       ],
    //     ),
    //   ],
    // );
  }
}
