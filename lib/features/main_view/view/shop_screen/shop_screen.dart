import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/widgets/filter_button.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/widgets/product_card.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/widgets/ranking_button.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/widgets/search_alert_dialog.dart';
import 'package:cam_of_ball/features/main_view/view/shop_screen/widgets/slider_widget.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/features/utils/widgets/search_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ScreenTitle(
                isActive: true,
                title: 'Shop',
              ),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4 ,vertical: 4) ,
                  child: SearchWidget(title: 'Search',),
                ),
              ),
               AspectRatio(
                 aspectRatio: 10/3.5,
                 child: SliderWidget(imagePath: 'assets/svg/shop_screen/shop_image.jpg',),),
              Row(
                children: [
                  const Expanded(child: RankingWidget()),
                  Expanded(child: FilterWidget()),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric( vertical: 10),
                child: SizedBox(
                  height: 32,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Row(
                        children: [
                          FilterContainer(
                            title: 'Brands',
                            filterTexts: const ['Nike','Puma','Adidas','Polo','Nike','Puma','Adidas','Polo','Nike','Puma','Adidas','Polo'],
                          ),
                          
                          FilterContainer(
                            title: 'Style',
                            filterTexts: const ['Football T-shirts','Football shorts','Tracksuit tops','Mini kits ','Uniforms','Football T-shirts','Vests','Football cleats','Football jackets ','Uniforms'],
                          ),
                          FilterContainer(
                            title: 'Teams',
                            filterTexts: const ['AC Milan','Real Madrid','Barcelona','Galatasaray','Fenerbahçe','AC Milan','Real Madrid','Barcelona','Galatasaray','Fenerbahçe','AC Milan','Real Madrid','Barcelona','Galatasaray','Fenerbahçe','AC Milan','Real Madrid','Barcelona','Galatasaray',],
                          ),
                          FilterContainer(
                            title: 'Popular',
                            filterTexts: const ['aaaa','bbbbbbb','mehmet','ahmet '],
                          ),
                          FilterContainer(
                            title: 'Popular',
                            filterTexts: const ['aaaa','bbbbbbb','mehmet','ahmet '],
                         ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
               Expanded(
                flex: 60,
                child: InkWell(
                  onTap: () {
                     context.router.push(const ShopDetailRoute());
                  },
                  child: const ProductCard(),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
