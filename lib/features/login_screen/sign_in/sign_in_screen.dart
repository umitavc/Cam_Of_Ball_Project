import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/login_screen/sign_in/widgets/sign_in_title.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


@RoutePage()
class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
          child: Column(
             mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: SingInTitle(),
              ),
               CustomTextFieldWidget(
                hintText: 'E-mail',
                maxLines: 4,
                maxLength: 25,
                expands: false,
                textInputType: TextInputType.emailAddress,
              ),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: CustomTextFieldWidget(
                  hintText: 'Password',
                  maxLength: 12,
                  expands: false,
                  autoCorrect: false,
                  isObscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
              ),

               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      context.router.push(const ForgotPasswordRoute());
                    },
                    child: const Text('Forgot password?',style: AppTextStyles.forgotTextStyle,),),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 1,
                          color:AppColors.textFieldColor,
                        ),
                      ),
                    ),
                   
                    const Text('OR'),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 1,
                          color: AppColors.textFieldColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: InkWell(
                  onTap: () {
                     context.router.push( BottomNavigatorBarRoute());
                  },
                  child: CustomButton(
                    backgroundColor: Colors.grey.shade300,
                    title: 'Login',
                    iconPath: 'assets/svg/icon/google_icon.svg',
                    textColor: Colors.black,
                  ),
                ),
              ),
              CustomButton(
                backgroundColor: Colors.grey.shade300,
                title: 'Sign in with google',
                icon: true,
                iconPath: 'assets/svg/icon/google_icon.svg',
                textColor: Colors.black,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'Don’t have an account? ',
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.router.push(const SignUpRoute());
                              
                            },
                        ),
                      ],
                    ),
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
