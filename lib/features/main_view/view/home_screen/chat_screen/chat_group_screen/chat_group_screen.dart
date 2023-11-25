import 'package:auto_route/auto_route.dart';
import 'package:cam_of_ball/core/router/app_router.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_button.dart';
import 'package:cam_of_ball/features/utils/widgets/custom_container.dart';
import 'package:cam_of_ball/features/utils/widgets/screen_title.dart';
import 'package:cam_of_ball/features/utils/widgets/search_widget.dart';
import 'package:cam_of_ball/shared/colors/app_colors.dart';
import 'package:cam_of_ball/shared/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ChatGroupScreen extends StatefulWidget {
  const ChatGroupScreen({super.key});

  @override
  State<ChatGroupScreen> createState() => _ChatGroupScreenState();
}

class _ChatGroupScreenState extends State<ChatGroupScreen> {
  final List<String> name = ['Denis Stleele', 'Rosa Richards', 'Christopher Steven', 'Umit Avci', 'Rasit Yilmaz', 'Denis Stleele', 'Rosa Richards', 'Christopher Steven', 'Umit Avci', 'Rasit Yilmaz', 'Denis Stleele', 'Rosa Richards', 'Christopher Steven', 'Umit Avci', 'Rasit Yilmaz'];

  List<String> isVisible = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              ScreenTitle(
                title: 'New Group',
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset('assets/svg/chat/edit.svg'),
                ),
              ),
              SearchWidget(
                title: 'Search',
                elevation: 1,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text('Suggested', style: AppTextStyles.blackTextStyle.copyWith(fontSize: 15)),
                  ),
                  SizedBox(
                    height: isVisible.isEmpty ? 0 : 40,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: isVisible.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CustomContainer(
                              backgroundColor: AppColors.secondaryColor,
                              height: 40,
                              title: isVisible[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    itemCount: 15,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: SizedBox(
                          height: 42,
                          width: 42,
                          child: Stack(
                            clipBehavior: Clip.none,
                            fit: StackFit.expand,
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage('assets/png/avatar.png'),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 4,
                                child: Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(color: AppColors.greenActiveColor, borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        title: Text(name[index], style: AppTextStyles.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600)),
                        trailing: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          onTap: () {
                            setState(() {
                              isVisible.contains(name[index]) ? isVisible.remove(name[index]) : isVisible.add(name[index]);
                            });
                          },
                          child: SvgPicture.asset(
                            isVisible.contains(name[index]) ? 'assets/svg/chat/tick-circle.svg' : 'assets/svg/shop_screen/tick_square.svg',
                            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              CustomButton(title: 'Create Group', backgroundColor: AppColors.secondaryColor, textColor: AppColors.whiteColor, onTap: () {
                context.router.push(const MessageRoute());
              },),
            ],
          ),
        ),
      ),
    );
  }
}
