import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,),
          child: Column(
            children: [
              ScreenTitle(
                title: 'Settings',
              ),
              Expanded(
                flex: 9,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CustomTextFieldWidget(
                        hintText: 'Username',
                        maxLength: 25,
                        expands: false,
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CustomTextFieldWidget(
                        hintText: 'Name Surname',
                        maxLength: 25,
                        expands: false,
                        textInputType: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CustomTextFieldWidget(
                        hintText: 'E-mail',
                        maxLength: 25,
                        expands: false,
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CustomTextFieldWidget(
                        hintText: 'Phone',
                        maxLength: 25,
                        expands: false,
                        textInputType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: InkWell(
                  onTap: () {},
                  child: CustomButton(
                    title: 'Submit',
                    textColor: Colors.white,
                    backgroundColor: AppColors.secondaryColor,
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
