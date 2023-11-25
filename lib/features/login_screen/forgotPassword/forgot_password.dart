import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/login_screen/forgotPassword/widgets/forgot_title.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            children: [
               ForgotTitle(
                title:'To reset your password, enter your registered e-mail address.' ,
                imagePath: 'assets/svg/login/forgot_password.svg',),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: CustomTextFieldWidget(
                  hintText: 'E-mail',
                  maxLines: 4,
                  maxLength: 25,
                  expands: false,
                  textInputType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  context.router.push(const VerificationRoute());
                },
                child: CustomButton(
                  backgroundColor: AppColors.secondaryColor,
                  title: 'Send',
                  textColor: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
