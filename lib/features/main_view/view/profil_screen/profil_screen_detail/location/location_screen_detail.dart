import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:flutter/material.dart';
@RoutePage()
class LocationScreenDetail extends StatelessWidget {
  const LocationScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16 ,),
          child: Column(
            children: [
              ScreenTitle(
                title: 'New Location',
              ),
              Expanded(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextFieldWidget(
                        hintText: 'Location Name',
                        textInputType: TextInputType.text,
                      ),
                      CustomTextFieldWidget(
                        hintText: 'Location',
                        textInputType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: InkWell(
                  onTap: () {},
                  child: CustomButton(
                    title: 'Save',
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
