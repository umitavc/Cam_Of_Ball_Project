import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SinglePaymentComponent extends StatelessWidget {
  const SinglePaymentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Card:',
          style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Expanded(flex: 2, child: SvgPicture.asset('assets/svg/profil_screen/master_card.svg')),
              Expanded(
                flex: 5,
                child: Text(
                  '4532 - 77** - **** - 3255',
                  style: AppTextStyles.blackTextStyle.copyWith(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Or Add a New Card:',
            style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Payment Method:',
            style: AppTextStyles.yellowTextStyle,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SizedBox(
                child: Center(
                  child: Align(alignment: Alignment.centerLeft, child: SvgPicture.asset('assets/svg/profil_screen/master_card.svg')),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: SizedBox(
                height: 28,
                child: Center(
                  child: Align(alignment: Alignment.centerLeft, child: SvgPicture.asset('assets/svg/profil_screen/logo_visa.svg')),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: SizedBox(
                height: 28,
                child: Center(
                  child: Align(alignment: Alignment.centerLeft, child: SvgPicture.asset('assets/svg/profil_screen/pay_pal.svg')),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              Text(
                'Total Price:',
                style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const Text(
                '90£',
                style: AppTextStyles.subTextStyle,
              ),
            ],
          ),
        ),
        CustomButton(
          title: 'Pay Now',
          backgroundColor: AppColors.secondaryColor,
          textColor: AppColors.whiteColor,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Your Order Details:',
            style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
