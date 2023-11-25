import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gradient_slider/gradient_slider.dart';

@RoutePage()
class RatePlayerScreen extends StatefulWidget {
  const RatePlayerScreen({super.key});

  @override
  State<RatePlayerScreen> createState() => _RatePlayerScreenState();
}

class _RatePlayerScreenState extends State<RatePlayerScreen> {
  final List<_SliderModels> _model = [
    _SliderModels(currentValue: 0, title: 'Pace'),
    _SliderModels(currentValue: 0, title: 'Shootıng'),
    _SliderModels(currentValue: 0, title: 'Passıng'),
    _SliderModels(currentValue: 0, title: 'Drıbbling'),
    _SliderModels(currentValue: 0, title: 'Defence'),
    _SliderModels(currentValue: 0, title: 'Physıcal'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                title: 'Rate Player',
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  final model = _model[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            model.title,
                            style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 9,
                              child: GradientSlider(
                                thumbAsset: 'assets/png/thumb_button.png',
                                thumbHeight: 28,
                                thumbWidth: 28,
                                trackHeight: 4,
                                //trackBorder: 1,
                                //trackBorderColor: Colors.black,
                                activeTrackGradient: const LinearGradient(
                                  colors: [Color(0xffA9FCFF), Color(0xff312BEC)],
                                ),
                                inactiveTrackGradient: const LinearGradient(colors: [Color(0xffA9FCFF), Color(0xff312BEC)]),
                                //inactiveTrackColor: Colors.black,
                                slider: Slider(
                                  value: _model[index].currentValue.toDouble(),
                                  max: 100,
                                  onChanged: (value) {
                                    setState(() {
                                      model.currentValue = value.toInt();
                                    });
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  _model[index].currentValue.toStringAsFixed(0),
                                  style: AppTextStyles.hinttextStyle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              CustomButton(
                title: 'Rate',
                backgroundColor: AppColors.secondaryColor,
                textColor: AppColors.whiteColor,
                onTap: () {
                  if (_model.any((model) => model.currentValue > 0)) {
                    context.router.push(const RatePlayerDetailRoute());
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please rate the player'),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final class _SliderModels {
  _SliderModels({
    required this.currentValue,
    required this.title,
  });
  int currentValue;
  final String title;
}
