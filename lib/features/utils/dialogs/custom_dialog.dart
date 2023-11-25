import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/extensions/context_extension.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';
final class AppDialogs {
  factory AppDialogs() => instance;

  const AppDialogs._internal();
  static const AppDialogs instance = AppDialogs._internal();

  ///
  /// Custom Success or Failure Dialog
  ///

  Future<T?> showCustomDialog<T>(
    BuildContext context, {
    void Function()? onPressedButton,
    String title = '',
    List<Widget> subtitles = const [],
    String nextRouteButtonText = '',
    Widget? search,
    String refreshRouteButtonText = 'Refresh',
    bool isActive = false,
    bool isError = false,
  }) async {
    final alert = AlertDialog(
      scrollable: true,

      //insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: context.width * .70),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            if (title != '')
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(onTap: () => context.popRoute(), child: const Icon(Icons.close)),
                ],
              )
            else
              Container(),
            const SizedBox(
              height: 20,
            ),
            if (subtitles.isNotEmpty) ...[
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: context.height * .5),
                child: SingleChildScrollView(
                  child: Column(
                    children: subtitles,
                  ),
                ),
              ),
            ] else
              const SizedBox(),
          ],
        ),
      ),
      actions: [
        if (isActive) Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
          child:  InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              if (onPressedButton != null) {
                onPressedButton();
              } else {
                context.popRoute();
              }
            },
            child: Container(
              height: kMinInteractiveDimension,
              decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  nextRouteButtonText,
                  style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ) else Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          if (onPressedButton != null) {
                            onPressedButton();
                          } else {
                            //context.popRoute();
                          }
                        },
                        child: Container(
                          height: kMinInteractiveDimension,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.secondaryColor,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              refreshRouteButtonText,
                              style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: AppColors.secondaryColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          if (onPressedButton != null) {
                            onPressedButton();
                          } else {
                            context.popRoute();
                          }
                        },
                        child: Container(
                          height: kMinInteractiveDimension,
                          decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              nextRouteButtonText,
                              style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );

    return showDialog<T?>(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
