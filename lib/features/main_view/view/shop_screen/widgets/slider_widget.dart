import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({super.key, this.imagePath = ''});
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect( 
            borderRadius: BorderRadius.circular(10), 
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: 10,
        //viewportFraction: 0.8,
        // indicatorLayout: PageIndicatorLayout.COLOR,
        // scale: 0.9,
        // pagination: const SwiperPagination(
        //   builder: DotSwiperPaginationBuilder(
        //     color: Colors.blue,
        //     activeColor: Colors.red,
        //   ),
        // ),
      ),
    );
  }
}
