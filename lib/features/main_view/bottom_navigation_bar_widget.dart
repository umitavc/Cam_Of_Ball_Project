import 'package:cam_of_ball/features/main_view/bloc/bottom_navigator_bar_bloc.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoreBottomNavigationBarWidget extends StatelessWidget {
  CoreBottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBlocBloc, HomeScreenBlocState>(
      builder: (context, state) {
        return BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: bottomNavItems,
          unselectedItemColor: AppColors.blackColor,
          currentIndex: state.tabIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.secondaryColor,
          onTap: (index) {
            BlocProvider.of<HomeScreenBlocBloc>(context).add(TabChange(tabIndex: index));
          },
        );
      },
    );
  }

  final List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svg/home_screen/bottom_navigator_bar/home_icon.svg'),
      label: 'Home Page',
      activeIcon: SvgPicture.asset('assets/svg/home_screen/bottom_navigator_bar/home_icon.svg', colorFilter: const ColorFilter.mode(AppColors.secondaryColor, BlendMode.srcIn)),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svg/home_screen/bottom_navigator_bar/shop_icon.svg'),
      label: 'Shop',
      activeIcon: SvgPicture.asset('assets/svg/home_screen/bottom_navigator_bar/shop_icon.svg', colorFilter: const ColorFilter.mode(AppColors.secondaryColor, BlendMode.srcIn)),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svg/home_screen/bottom_navigator_bar/post_icon.svg'),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svg/home_screen/bottom_navigator_bar/like.svg'),
      label: 'Social media',
      activeIcon: SvgPicture.asset(
        'assets/svg/home_screen/bottom_navigator_bar/like.svg',
        colorFilter: const ColorFilter.mode(AppColors.secondaryColor, BlendMode.srcIn),
      ),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svg/home_screen/bottom_navigator_bar/profil_icon.svg'),
      label: 'Profil',
      activeIcon: SvgPicture.asset(
        'assets/svg/home_screen/bottom_navigator_bar/profil_icon.svg',
        colorFilter: const ColorFilter.mode(AppColors.secondaryColor, BlendMode.srcIn),
      ),
    ),
  ];
}
