import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/bloc/detail_product_screen_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/bloc/detail_product_screen_event.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_review_screen/bloc/detail_product_screen_state.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_text_field.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductReviewTextComponent extends StatelessWidget {
  const ProductReviewTextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailProductScreenBloc, DetailReviewState>(
      builder: (context, state) {
        return Column(
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  if (state is! ShowMoreReviewsState) {
                    context.read<DetailProductScreenBloc>().add(ShowMoreReviewsEvent());
                  } else {
                    context.read<DetailProductScreenBloc>().add(ShowLessReviewsEvent());
                  }
                },
                child: Text(
                  state is ShowLessReviewsState ? 'Show more' : 'Show less',
                  style: const TextStyle(decoration: TextDecoration.underline, fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.secondaryColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Leave your comment', style: AppTextStyles.blackTextStyle),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(height: context.height * 0.2),
                    child: CustomTextFieldWidget(
                      hintText: 'Write here',
                      expands: true,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CustomButton(title: 'Share', backgroundColor: AppColors.secondaryColor),
            ),
          ],
        );
      },
    );
  }
}
