import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/onboarding/widgets/bottom_container.dart';
import 'package:cam_of_ball/features/onboarding/widgets/custom_buildPage.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';


@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  CustomBuildPage(imagePath: 'assets/png/onboardin1.png',),
                  CustomBuildPage( imagePath: 'assets/png/onbarding2.png' ),
                  CustomBuildPage( imagePath: 'assets/png/onboarding3.png' ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: _buildIndicator(),
            ),
            const BottomContainer(),
          ],
        ),
      ),
    );
  }

  

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Container(
          margin: const EdgeInsets.all(4),
          width: 30,
          height: 10,
          decoration: BoxDecoration(
            color: _currentPage == index ? AppColors.secondaryColor : Colors.grey,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }

 
}
