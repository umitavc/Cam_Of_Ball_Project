import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const totalPageCount = 5;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: context.height * .35),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            'assets/png/product.png',
            fit: BoxFit.cover,
          );
        },
        itemCount: totalPageCount, 
        viewportFraction: 0.8,
        scale: 0.9,
        loop: false,
        pagination: SwiperCustomPagination(
          builder: (
            BuildContext context,
            SwiperPluginConfig config,
          ) {
            final currentPage = config.activeIndex + 1;
            return Container(
              alignment: Alignment.bottomLeft,
              child: Text('$currentPage/$totalPageCount Photo', style: AppTextStyles.blueTextStyle),
            );
          },
        ),
      ),
    );
  }
}
