import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/login_screen/sign_up/widgets/circular_image.dart';
import 'package:cam_of_ball/features/login_screen/sign_up/widgets/football_card_title.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FootballScreen extends StatelessWidget {
  const FootballScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 90,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: FootballCardTitle(),
                  ),

                  const Center(child: CircularImage()),
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
                      isDropdown: true,
                      hintText: 'Foot',
                      items: const ['a', 'b', 'c'],
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
                      items: const ['a', 'b','d'],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'State',
                      maxLength: 25,
                      expands: false,
                      textInputType: TextInputType.text,
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'Zip Code',
                      maxLength: 25,
                      expands: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'Password',
                      maxLength: 25,
                      expands: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),
                  CustomButton(
                    title: 'Sing Up',
                     textColor:Colors.white,
                    backgroundColor: AppColors.secondaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
