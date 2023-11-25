import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/bloc/product_add_cart_bloc.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/bloc/product_add_cart_state.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/shop_detail/shop_product_detail_screen/product_add_cart/widgets/add_cart_container.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SubTitlesWidget extends StatelessWidget {
  SubTitlesWidget({super.key});

  final List<String> colors = ['Black', 'White', 'Blue', 'Red', 'Yellow'];
    final List<String> size = ['XS', 'S', 'L', 'XL', 'XXL'];


  


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductAddCartBloc, ProductAddCartState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Num',
                  style: AppTextStyles.blackSubTextStyle,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<ProductAddCartBloc>().add(Deincrement());
                      },
                      child: SvgPicture.asset('assets/svg/shop_screen/minus-small.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text('${state.count}', style: AppTextStyles.blackSubTextStyle),
                    ),
                    InkWell(
                      onTap: () {
                        context.read<ProductAddCartBloc>().add(Increment());
                      },
                      child: SvgPicture.asset('assets/svg/shop_screen/cross-small.svg'),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Color',
                      style: AppTextStyles.blackSubTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: AddCartContainer(
                            title: colors[index],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Size',
                      style: AppTextStyles.blackSubTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: AddCartContainer(
                            title: size[index],
                            border: true,
                            onTap: () {
                              
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Total Payment',
                      style: AppTextStyles.textFieldStyle.copyWith(fontSize: 12),
                    ),
                  ),
                  Text(
                    '90£',
                    style: AppTextStyles.blackSubTextStyle.copyWith(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
