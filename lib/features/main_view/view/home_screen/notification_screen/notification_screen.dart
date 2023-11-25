import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/features/main_view/view/home_screen/notification_screen/widgets/notification_body.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:flutter/material.dart';
@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ScreenTitle(
                title: 'Notification',
              ),
            ),
            Expanded(child: NotificationBody()),
          ],
        ),
      ),
    );
  }
}
