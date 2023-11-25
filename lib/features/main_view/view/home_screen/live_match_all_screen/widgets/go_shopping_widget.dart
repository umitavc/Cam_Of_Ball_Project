import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoShoppingWidget extends StatelessWidget {
  const GoShoppingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Go shopping',
                style: AppTextStyles.blackTextStyle,
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  
                },
                child: const Text('See All', style: AppTextStyles.blueSubTextStyle),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
           // context.router.push(const ShopRoute()); 
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: 189,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xff292D32)),
                ),
              ),
              Positioned(
                top: -30,
                child: Image.asset(
                  'assets/png/shopping_card.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
