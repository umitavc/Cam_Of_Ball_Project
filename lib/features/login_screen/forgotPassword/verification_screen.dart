import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/login_screen/forgotPassword/widgets/forgot_title.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Column(
            children: [
               ForgotTitle(
                title: 'Please check email to see the verification code',
                imagePath: 'assets/svg/login/otp_verification.svg',
               ),
              const Row(
                children: [
                  Text('OTP Code', style: AppTextStyles.blueTextStyle),
                ],
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 64,
                      width: 68,
                      child: TextFormField(
                        autofocus: true,
                        onSaved: (pin1) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: AppColors.secondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.blueTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 64,
                      width: 68,
                      child: TextFormField(
                        autofocus: true,
                        onSaved: (pin2) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: AppColors.secondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.blueTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 64,
                      width: 68,
                      child: TextFormField(
                        autofocus: true,
                        onSaved: (pin3) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: AppColors.secondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.blueTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 64,
                      width: 68,
                      child: TextFormField(
                        autofocus: true,
                        onSaved: (pin4) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context);
                          }
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: AppColors.secondaryColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.blueTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  context.router.push(const NewPasswordRoute());
                },
                child: CustomButton(
                  backgroundColor: AppColors.secondaryColor,
                  title: 'Reset Password',
                  textColor: AppColors.whiteColor,
                ),
              ),

              const Row(
                children: [
                  Text('Resend code to',style: AppTextStyles.greyTextStyle,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
