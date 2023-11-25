import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/login_screen/forgotPassword/widgets/forgot_title.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
@RoutePage()
class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
             ForgotTitle(
              title:'Your new password must be different from previous used password.',
              imagePath: 'assets/svg/register/new_password.svg',),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CustomTextFieldWidget(
                hintText: 'New Password',
                maxLength: 12,
                expands: false,
                textInputType: TextInputType.emailAddress,
              ),
            ),
             CustomTextFieldWidget(
              hintText: 'Password Again',
              maxLength: 12,
              expands: false,
              textInputType: TextInputType.emailAddress,
            ),


             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16),
               child: InkWell(
                  onTap: () {
                    
                  },
                  child: CustomButton(
                    backgroundColor: AppColors.secondaryColor,
                    title: 'Reset Password',
                    textColor: AppColors.whiteColor,
                  ),
                ),
             ),
          ],
        ),
      ),
    ));
  }
}
