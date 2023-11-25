import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class PaymentScreenDetail extends StatelessWidget {
  const PaymentScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ScreenTitle(
                title: 'New Card',
               
              ),
              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Payment Method:',
                        style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 28,
                              
                              child: Center(
                                child: SvgPicture.asset('assets/svg/profil_screen/master_card.svg'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: SizedBox(
                              height: 28,
                              child: Center(
                                child: SvgPicture.asset('assets/svg/profil_screen/logo_visa.svg'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: SizedBox(
                              height: 28,
                              child: Center(
                                child: SvgPicture.asset('assets/svg/profil_screen/pay_pal.svg'),
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 5,
                            child: SizedBox(
                              width: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextFieldWidget(
                      hintText: 'Card Holder Name',
                      textInputType: TextInputType.text,
                    ),
                    CustomTextFieldWidget(
                      hintText: 'Card Number',
                      maxLength: 16,
                      textInputType: TextInputType.number,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: CustomTextFieldWidget(
                            hintText: 'CVV2',
                            maxLength: 3,
                            textInputType: TextInputType.number,
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: CustomTextFieldWidget(
                            hintText: 'Ex.date',
                            maxLength: 10,
                            textInputType: TextInputType.datetime,
                          ),
                        ),
                      ],
                    ),
                  ],
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
