import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/login_screen/sign_up/sign_up_title.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';


@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
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
                    child: SingUpTitle(),
                  ),
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
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'Adress',
                      maxLength: 25,
                      expands: false,
                      textInputType: TextInputType.streetAddress,
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomTextFieldWidget(
                      hintText: 'City',
                      maxLength: 25,
                      expands: false,
                      textInputType: TextInputType.streetAddress,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: InkWell(
                      onTap: () {
                       context.router.push(const FootballRoute());
                      },
                      child: CustomButton(
                        title: 'Continue',
                        textColor: Colors.white,
                        backgroundColor: AppColors.secondaryColor,
                      ),
                    ),
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
