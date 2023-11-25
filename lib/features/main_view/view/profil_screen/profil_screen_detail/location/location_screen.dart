import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenTitle(
                title: 'Location',
              ),
              Expanded(
                flex: 9,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: SizedBox(
                        height: 72,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Text(
                                    'Location 1:',
                                    style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(flex: 2, child: SvgPicture.asset('assets/svg/profil_screen/location.svg', colorFilter: const ColorFilter.mode(Color(0xfff99708), BlendMode.srcIn))),
                                    Expanded(
                                      flex: 6,
                                      child: Text(
                                        'Istanbul, Umraniye, more...lorem\nipsum dolorssssssssssssssssssssssssssssssssssssssssssssssssss',
                                        overflow: TextOverflow.ellipsis, 
                                        maxLines: 2,
                                        style: AppTextStyles.blackTextStyle.copyWith(fontSize: 14),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: InkWell(
                                        onTap: () {},
                                        child: SvgPicture.asset('assets/svg/profil_screen/trash.svg'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: InkWell(
                  onTap: () {
                    context.router.push(const LocationRouteDetail());
                  },
                  child: CustomButton(
                    title: 'Ad New Card',
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
