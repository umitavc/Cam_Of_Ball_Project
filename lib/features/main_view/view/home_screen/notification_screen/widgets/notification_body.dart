// ignore_for_file: avoid_dynamic_calls

import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';

class NotificationBody extends StatelessWidget {
   NotificationBody({super.key});
    final List<Map<String, dynamic>> notificationData = [
    {
      'title': 'Today',
      'items': <Map<String, dynamic>>[
        {
          'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          'time': '10.41',
          'image': 'assets/svg/notification/person1.png',
        },
        {
          'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          'time': '10.41',
          'image': 'assets/svg/notification/person1.png',
        },
        {
          'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          'time': '10.41',
          'image': 'assets/svg/notification/person2.png',
        },
      ],
    },
    {
      'title': 'Yesterday',
      'items': <Map<String, dynamic>>[
        {
          'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          'time': '10.41',
          'image': 'assets/svg/notification/person2.png',
        },
        {
          'message': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          'time': '11.15',
          'image': 'assets/svg/notification/person2.png',
        },
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notificationData.length,
      itemBuilder: (context, index,) {
        final title = notificationData[index]['title'];
        final items = notificationData[index]['items'];
        final item = items[index];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 16),
              child: Text(
                title.toString(),
                style: AppTextStyles.blackTextStyle.copyWith(fontSize: 20),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: items.length as int,
              itemBuilder: (context, subIndex) {
                final item = items[subIndex];

                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 90,
                        decoration: const BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 36,
                                    width: 36,
                                    child: Image.asset(
                                      item['image'].toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 6),
                                      child: Text(
                                        item['message'].toString(),
                                        style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      item['time'].toString(),
                                      style: AppTextStyles.textFieldStyle,
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
